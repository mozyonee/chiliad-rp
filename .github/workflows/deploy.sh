#!/usr/bin/env sh
set -eu

APP_NAME="${APP_NAME:-chiliad}"
APP_DIR="${APP_DIR:-/opt/chiliad}"
IMAGE="${IMAGE_NAME:-ghcr.io/mozyonee/chiliad.rp}:${IMAGE_TAG:-latest}"
HOST_PORT="${HOST_PORT:-7777}"
MYSQL_PORT="${MYSQL_PORT:-3306}"

: "${MYSQL_HOST:?MYSQL_HOST is required}"
: "${MYSQL_USER:?MYSQL_USER is required}"
: "${MYSQL_PASSWORD:?MYSQL_PASSWORD is required}"
: "${MYSQL_DATABASE:?MYSQL_DATABASE is required}"

SUDO=""
[ "$(id -u)" -eq 0 ] || SUDO="sudo"
DOCKER="$SUDO docker"

ensure_docker() {
	if ! command -v docker >/dev/null 2>&1; then
		curl -fsSL https://get.docker.com | $SUDO sh
	fi
}

login_registry() {
	if [ -n "${GHCR_TOKEN:-}" ]; then
		echo "$GHCR_TOKEN" | $DOCKER login ghcr.io -u "$GHCR_USERNAME" --password-stdin
	fi
}

deploy_container() {
	$DOCKER pull "$IMAGE"
	$DOCKER rm -f "$APP_NAME" 2>/dev/null || true
	$SUDO mkdir -p "$APP_DIR/scriptfiles"

	$DOCKER run -d \
		--name "$APP_NAME" \
		--restart unless-stopped \
		-p "$HOST_PORT:7777/udp" \
		-e MYSQL_HOST="$MYSQL_HOST" \
		-e MYSQL_PORT="$MYSQL_PORT" \
		-e MYSQL_USER="$MYSQL_USER" \
		-e MYSQL_PASSWORD="$MYSQL_PASSWORD" \
		-e MYSQL_DATABASE="$MYSQL_DATABASE" \
		-v "$APP_DIR/scriptfiles:/srv/chiliad/scriptfiles" \
		"$IMAGE"
}

ensure_docker
login_registry
deploy_container
$DOCKER image prune -f
