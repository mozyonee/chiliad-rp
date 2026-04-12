# World: Advertising & Infrastructure

## 1. Dynamic Billboard System
Reconstructed from BildInfo array (Lines 8500-9000).
* **Capacity**: Supports 100+ rentable billboards.
* **Customization**: Players set Text, FontFace, Alignment, and Background Color.
* **Persistence**: Expiry handled via bDay timestamp in the MySQL backend.

## 4. Dynamic Gate Engine (GI Array)
Reconstructed from lines 25500-26000.

### 4.1 Technical Schema
* **Positioning**: Stores dual 6-float coordinate sets ('gOpenedPos' and 'gClosedPos').
* **Mobility**: Controlled via 'MoveDynamicObject' with a custom 'gSpeed' float (default 1.0 - 5.0).
* **Access Logic**: 
  - Faction Lock: 'gFaction' ID restricts usage to specific organizations.
  - Proximity: 'gRadius' defines the interactive trigger window.

## 5. Administrative World Tools
* **Object Spawner (OI)**: High-level admins use the 'D_OBJECT_ADD' menu to persist GTA models directly into the MySQL 'objects' table.
* **Telemetry**: Stores 'oAuthor' (Admin name) for every spawned world object to prevent unauthorized mapping changes.

## 4. Administrative Mapping Tools (D_OBJ)
Reconstructed from lines 37000-37500.

Admins and Organization Leaders can spawn persistent world decorations:
* **Barriers**: Concrete barricades (1423), Traffic cones (1238), and Fences (970).
* **Furniture**: Crates (11699), Tables (19950), and Chairs (19967) for RP interiors.
* **Interactive Signs**: Object Type 19980 supports 'SetDynamicObjectMaterialText', allowing for custom player-written 3D signs.
* **Cleanup**: /fence command allows for radial deletion of spawned objects.

## 5. Industrial & Faction Radial Zones
Reconstructed from gAreas/sad_area logic (Lines 39500-40000).

Interactive gameplay is driven by Streamer Areas:
* **Job Hubs**: 1000m spheres for Meat/Sawmill/Diver centers.
* **Loading Docks**: Specialized 2.0m spheres for Business Articles (24/7 vs Trucker).
* **Faction HQs**: HQ-specific areas that trigger 'Equipment' prompts and set character colors.
* **Graffiti (sad_area)**: 121 individual 2.0m spheres used for Ghetto influence tracking.

## 6. Interactive Infrastructure Technicals
Reconstructed from load_atm and load_bilboards (Lines 51500-52000).

### 6.1 ATM Architecture
* **Object**: Model 19526.
* **Texturing**: Uses 'SetDynamicObjectMaterial' index 3 with texture 'kmb_atmx' and 'kmb_atm_sign' for a realistic branded look.
* **Label Sync**: Dynamic 3D text showing the 'cash' column ( max) updated via 'UpdateATMLabel'.

### 6.2 Signboard Engine
* **Persistence**: Billboards support real-time editing of Font (4 variants), Alignment (Left/Center/Right), and persistent HEX backgrounds.

## 7. NPC Interaction Technicals (SendBotMessage)
Reconstructed from lines 57500-58000.

Static actors can communicate with players using a proximity-driven speech engine:
* **Detection**: Radius search (10.0m) finds the nearest Actor ID using distance coefficient math.
* **Visualization**: Sets the actor's 3D label text and triggers the 'IDLE_chat' animation for 10 seconds.
* **Automation**: Logic is bypassed if the player is not authenticated (tLogin check).

## 8. High-Fidelity Actor Interaction
Reconstructed from SetCameraToDynamicActor technicals (Lines 71000-71500).

Players experience immersive NPC interactions via a specialized camera interpolation engine:
* **Interpolation**: Uses 'InterpolateCameraPos' and 'InterpolateCameraLookAt' to create a 3-second smooth transition to the actor's face.
* **Lip Sync**: Triggers 'IDLE_CHAT' animation and dynamic 3D chat bubbles (SetActorChatBubble) with automatic cleanup timers.
* **Automation**: Character movement is locked (TogglePlayerControllable) for the duration of the dialogue.
