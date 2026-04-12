# Chiliad RP - Project Context

This project is a San Andreas Multiplayer (SA-MP) roleplay server built on the **open.mp (OMP)** platform using the **PAWN** scripting language and **sampctl** for project management.

## Project Overview

*   **Main Technology:** PAWN (scripting language).
*   **Platform:** [open.mp](https://open.mp) - a modern, backward-compatible SA-MP server implementation.
*   **Package Manager:** [sampctl](https://github.com/Southclaws/sampctl) - handles dependencies, builds, and server orchestration.
*   **Architecture:**
    *   `main.pwn`: The central entry point for the gamemode script.
    *   `pawn.json`: Configuration file for `sampctl`, defining entry points, output paths, and dependencies.
    *   `components/`: Contains the `open.mp` server components (DLLs for Windows).
    *   `dependencies/`: External PAWN libraries (managed by `sampctl`).
    *   `gamemodes/`: Target directory for the compiled `.amx` files.
    *   `filterscripts/`, `npcmodes/`, `scriptfiles/`: Standard SA-MP/OMP server directories for additional scripts and data.

## Building and Running

The project relies on `sampctl` for most tasks. Ensure you have it installed.

*   **Install Dependencies:**
    ```bash
    sampctl ensure
    ```
*   **Compile Gamemode:**
    ```bash
    sampctl build
    ```
*   **Run Server:**
    ```bash
    sampctl run
    ```

## Development Conventions

*   **Style:** Follow standard PAWN coding conventions, prioritizing readability and performance.
*   **Library Usage:** Use the `open.mp` standard library (`omp-stdlib`) and its associated includes.
*   **Versioning:** Follow [Semantic Versioning](https://semver.org/). Update the `tag` in `pawn.json` when releasing new versions.
*   **Project Structure:** Keep the project modular. While the project is currently in its early stages with a minimal `main.pwn`, future development should ideally separate logic into multiple include files or components if applicable.
*   **Testing:** Use `sampctl run` to test changes in-game or via server logs.
