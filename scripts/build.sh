#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="$ROOT/.build"
BUILD_ROOT="$BUILD_DIR/cp1251"

trap 'rm -rf "$BUILD_ROOT"; rmdir "$BUILD_DIR" 2>/dev/null || true' EXIT

command -v sampctl >/dev/null || { echo "missing required command: sampctl" >&2; exit 1; }
command -v iconv >/dev/null || { echo "missing required command: iconv" >&2; exit 1; }

mkdir -p "$BUILD_ROOT"

cp "$ROOT/main.pwn" "$BUILD_ROOT/main.pwn"
cp "$ROOT/pawn.json" "$BUILD_ROOT/pawn.json"
cp -R "$ROOT/source" "$BUILD_ROOT/source"

find "$BUILD_ROOT" -type f \( -name '*.pwn' -o -name '*.inc' \) -print0 | while IFS= read -r -d '' file; do
	iconv -f UTF-8 -t CP1251//TRANSLIT "$file" > "$file.cp1251"
	mv "$file.cp1251" "$file"
done

sed -i.bak 's#"output"[[:space:]]*:[[:space:]]*"[^"]*"#"output": "../../gamemodes/main.amx"#' "$BUILD_ROOT/pawn.json"
rm -f "$BUILD_ROOT/pawn.json.bak"

if [ -d "$ROOT/dependencies" ]; then
	ln -s "$ROOT/dependencies" "$BUILD_ROOT/dependencies" 2>/dev/null || cp -R "$ROOT/dependencies" "$BUILD_ROOT/dependencies"
fi

sampctl build --dir "$BUILD_ROOT" "$@"
