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
    ./scripts/build.sh
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

## Scalable Source Layout

As the gamemode grows, prefer organizing code by feature ownership instead of file type. Keep `main.pwn` small and use a central `source/bootstrap.inc` file to control include order.

Recommended long-term layout:

```text
source/
+-- bootstrap.inc
+-- data/
|   +-- constants.inc
|   +-- colors.inc
|   +-- limits.inc
|   +-- enums.inc
+-- core/
|   +-- config.inc
|   +-- database.inc
|   +-- logging.inc
|   +-- commands.inc
|   +-- dialogs.inc
|   +-- callbacks.inc
|   +-- utils.inc
+-- runtime/
|   +-- startup.inc
|   +-- shutdown.inc
+-- world/
|   +-- mapping/
|       +-- mapping.inc
|       +-- interiors.inc
|       +-- public_locations.inc
+-- ui/
|   +-- textdraws/
|       +-- textdraws.inc
|       +-- hud.inc
|       +-- login_screen.inc
|       +-- notifications.inc
+-- systems/
    +-- accounts/
    +-- characters/
    +-- admin/
    +-- chat/
    +-- inventory/
    +-- vehicles/
    +-- homes/
    +-- businesses/
    +-- factions/
    +-- jobs/
    +-- economy/
    +-- phone/
```

Use these ownership rules:

*   Global/shared infrastructure belongs in `source/core/`.
*   Server lifecycle coordination belongs in `source/runtime/`.
*   Shared constants, enums, limits, and colors belong in `source/data/`.
*   Global world mapping belongs in `source/world/mapping/`.
*   Global UI and textdraws belong in `source/ui/`.
*   Feature-owned code belongs in `source/systems/<feature>/`.
*   Feature-specific mapping and textdraws stay inside the feature that owns them, for example `source/systems/jobs/trucking/map.inc` and `source/systems/jobs/trucking/textdraws.inc`.

Avoid broad type buckets such as one global `source/commands/`, `source/callbacks/`, or `source/textdraws/` folder for all feature code. These make one feature harder to understand once the server grows.

## Feature File Convention

Within a feature folder, use the new naming convention to separate responsibility. Not every feature needs every file; add files only when the feature grows enough to justify them.

Example:

```text
source/systems/vehicles/
+-- index.inc
+-- data.inc
+-- database.inc
+-- cmds.inc
+-- hooks.inc
+-- callbacks.inc
+-- dialogs.inc
+-- map.inc
+-- textdraws.inc
```

File meanings:

*   `index.inc`: Main feature file. Owns feature initialization, public feature API, and feature-level business rules.
*   `data.inc`: Enums, arrays, constants, cache state, and internal data structures owned by the feature.
*   `database.inc`: Database persistence for the feature, including loading, saving, inserting, updating, and deleting records.
*   `cmds.inc`: Player and admin commands owned by the feature.
*   `hooks.inc`: `open.mp` / SA-MP callbacks handled by the feature, such as `OnPlayerConnect`, `OnPlayerEnterVehicle`, or `OnVehicleDeath`.
*   `callbacks.inc`: Custom gamemode callbacks owned by the feature, such as `OnVehiclePurchased`, `OnCharacterLoaded`, or `OnBusinessPurchased`.
*   `dialogs.inc`: Dialog definitions and dialog response handling owned by the feature.
*   `map.inc`: Mapping objects owned by the feature.
*   `textdraws.inc`: Textdraws owned by the feature.

Dialog flow convention:

*   Child dialogs should return to their parent dialog when the player refuses, cancels, or presses a back button. Only top-level dialogs should close on refusal.

ID allocation convention:

*   Use enums for IDs and reserved ranges, including dialogs and inventory items. Prefer one enum format that supports both single IDs and ranges instead of separate `*_BASE + offset` defines.

Use this mental model:

```text
hooks      = open.mp calls the gamemode
callbacks  = the gamemode calls itself
```

For example:

```pawn
// hooks.inc

hook OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    return Vehicle_HandlePlayerEnter(playerid, vehicleid, ispassenger);
}
```

```pawn
// callbacks.inc

forward OnVehiclePurchased(playerid, vehicleid);

Vehicle_CallPurchased(playerid, vehicleid)
{
    CallLocalFunction("OnVehiclePurchased", "ii", playerid, vehicleid);
    return 1;
}
```

Use custom callbacks only when multiple systems may need to react to a meaningful gameplay event. If only one function needs to continue the flow, prefer a normal function call.

Prefer module-prefixed functions and data names:

```pawn
Vehicle_Init()
Vehicle_LoadAll()
Vehicle_Park(playerid)
Vehicle_IsOwnedByPlayer(vehicleid, playerid)

Character_Load(playerid)
Character_Save(playerid)

Business_Purchase(playerid, businessid)
```

Avoid vague global names such as `Info`, `pInfo`, or `gData`; prefer specific names such as `VehicleData`, `CharacterData`, and `BusinessData`.
