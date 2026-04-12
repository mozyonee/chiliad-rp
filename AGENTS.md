# Chiliad RP - Gemini CLI Context

This project is a **San Andreas Multiplayer (SA-MP) Roleplay (RP)** server, specifically a fork of Maryland RP. It is a comprehensive gaming environment featuring complex systems such as factions, businesses, banking, betting, and more.

## Project Overview

- **Main Technologies:** Pawn (language), `sampctl` (package manager and build tool), MySQL (database), Docker (containerization), GitHub Actions (CI/CD).
- **Core Platform:** SA-MP 0.3.DL-R1 (as specified in `pawn.json`).
- **Architecture:**
    - **Monolithic Gamemode:** `gamemodes/chiliad.pwn` is the primary entry point, containing over 72,000 lines of code. It includes external modules and mapping data.
    - **Modular Mapping:** Located in `gamemodes/mapping/`, broken down by categories like `businesses`, `factions`, `general`, and `jobs`.
    - **Modular Filterscripts:** `filterscripts/mapedit.pwn` is a highly modularized map editor system with its components located in `filterscripts/mapedit/`.
    - **Plugins & Includes:** Managed via `pawn.json`, utilizing industry-standard plugins like `streamer`, `sscanf`, `MySQL`, `Pawn.RakNet`, and `YSI`.

## Key Files and Directories

- `pawn.json`: The central configuration file for `sampctl`. Defines entry points, output paths, and all dependencies.
- `gamemodes/chiliad.pwn`: The main server logic.
- `database/chiliad.sql`: The complete database schema, including tables for accounts, admins, vehicles, properties, and the betting system.
- `Dockerfile`: Used for building the production environment, handling dependency overrides and environment-based configuration.
- `scriptfiles/`: Contains server data, configuration (e.g., `mysql.ini`), and map files (`.map`).
- `.github/workflows/ci-cd.yml`: Automates the build and deployment process to a VPS via Docker.

## Building and Running

### Prerequisites
- [sampctl](https://github.com/Southclaws/sampctl) installed on your machine.

### Local Development
1.  **Install Dependencies:**
    ```bash
    sampctl package ensure
    ```
2.  **Build the Project:**
    ```bash
    sampctl package build
    ```
3.  **Run Locally:**
    ```bash
    sampctl package run
    ```
    *Note: Ensure you have a MySQL server running and configured.*

### Production Deployment
The project is designed to be deployed via Docker:
```bash
docker build -t chiliad-rp .
docker run -e MYSQL_HOST=... -e MYSQL_USER=... chiliad-rp
```

## Development Conventions

- **Modular Mapping:** When adding new maps, place the `create.inc` and `remove.inc` files in the appropriate subdirectory within `gamemodes/mapping/` and include them in the main gamemode.
- **Database Access:** Uses the `SA-MP-MySQL` plugin (R41-4). Logic typically involves asynchronous queries and cache-based data handling.
- **Dependency Management:** Always add new libraries or plugins via `pawn.json` to ensure they are correctly fetched by `sampctl` and included in the Docker build.
- **Map Editor:** The `mapedit` filterscript is the primary tool for in-game object placement and management. It uses a `value/var/func/call/hook` file naming convention for its modules.

## Deployment Details
- **VPS Deployment:** Handled by GitHub Actions. Builds an image, pushes to GHCR, and executes `deploy/run.sh` on the VPS.
- **Environment Variables:** Production configuration relies on secrets for MySQL connection details and SSH access.
