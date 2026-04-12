# Interaction: Global UI Specifications
Reconstructed from CreateGlobalTextDraws (Lines 9500-10000).

## 1. Ghetto Capture UI (GhettoTableTD)
* **Functional Layer**: Tracks Kills, Deaths, Damage, and K/D ratio in real-time.
* **Visual Layer**: Uses 'LD_Beat:chit' for stylized containers and 'particle:lamp_shad_64' for lighting effects.

## 2. Server Loading Interface (Loading_TD)
* **Logic**: 28 distinct TextDraw layers creating a custom brand image ('PRIME ROLE_PLAY').
* **Status**: Displays dynamic 'LOADING_TEXTURES' progress bar during boot/login.

## 3. Ghetto Capture HUD (Detailed)
Reconstructed from Capture array (Lines 10000-10500).
* **Components**: 34 distinct layers.
* **Functionality**: s TextDraw (Button 33) shows competing factions. Progress bars (Button 17-18) track territory capture percentage.
* **Automation**: Uses 'particle:lamp_shad_64' for flashing effects during active war.

## 4. Admin Security Panel (CheatPanel)
Reconstructed from lines 10500-11000.
* **Layout**: 10 diagnostic slots showing real-time player flags.
* **Metrics**: Tracks ping, packet loss, and FPS via 'CheatText' TextDraws.

## 5. Billboard GUI Editor (D_BILL_SETTING)
Reconstructed from lines 35500-36000.

Players utilize a specialized TextDraw editor to persist data to the 'billboards' table:
* **Content**: 144 characters max. Supports line breaks ('/') which the server converts to '\n'.
* **Typography**: Selection between Arial, Calibri, Tahoma, and Verdana.
* **Sizing**: Numeric input (1-255) scaled to TextDraw letter size.
* **Coloration**: HEX selection from the 'Colors_LOW' array (13 variants).

## 6. High-Fidelity Speedometer (Speed_PTD)
Reconstructed from update_speedometer logic (Lines 51500-52000).

### 6.1 Performance HUD
* **Heartbeat**: Refreshes every 500ms via 'pl_update_speed' timer.
* **Data Points**: 
  - Speed: Calculated via _GetVehicleSpeed (Vector math).
  - Vitality: HP bar scaled to health/1000. Forced engine kill if health < 320.0.
  - Resources: Fuel (liters/150) and Battery (vAkum/100) displays.

### 6.2 Service Integration
* **Taxi Overlay**: Displays 'TARIF' ($/km) and 'Count' (Active total) during active transport.
* **Trucker Overlay**: Shows 'PRODS' count and destination GPS markers.

## 6. High-Fidelity Speedometer (Speed_PTD)
Reconstructed from update_speedometer logic (Lines 51500-52000).

### 6.1 Performance HUD
* **Heartbeat**: Refreshes every 500ms via 'pl_update_speed' timer.
* **Data Points**: 
  - Speed: Calculated via _GetVehicleSpeed (Vector math).
  - Vitality: HP bar scaled to health/1000. Forced engine kill if health < 320.0.
  - Resources: Fuel (liters/150) and Battery (vAkum/100) displays.

### 6.2 Service Integration
* **Taxi Overlay**: Displays 'TARIF' ($/km) and 'Count' (Active total) during active transport.
* **Trucker Overlay**: Shows 'PRODS' count and destination GPS markers.

## 7. Interaction Minigame Engine (YandNsysTD)
Reconstructed from RandomYareNforJOBS (Lines 57500-58000).

Many jobs and criminal tasks utilize a randomized key-prompt system to validate active play:
* **Prompt Logic**: Randomly selects between 'Y' (65536), 'H' (2455), and 'N' (131072).
* **Progress Visualization**: A 10-segment string bar using the 'I' character. 
  - Success: Prepends '~g~' (Green).
  - Remainder: Prepends '~w~' (White).
* **State Cleanup**: Closing the minigame automatically clears job-specific PVars (e.g., 'anim_build', 'sad_uxod') and attached objects.

## 8. Global Task Animation Matrix
Reconstructed from JobTempProcess logic (Lines 58000-58500).

Every interactive task triggers a synchronized animation loop:
* **Firefighting (ID 1)**: 'FLAME_FIRE' from 'FLAME' library.
* **Sawmill (ID 5/6)**: 'WEAPON_csaw' and 'CSAW_G' (Chainsaw loops).
* **Mechanic (ID 8)**: 'shop_cashier' (Component assembly).
* **Crafting (ID 17/21)**: 'BOM_Plant_Loop' from 'BOMBER' library.
* **Gambling (ID 18/19)**: 'BETSLP_LOOP' from 'OTB' library (Betting slips).

## 9. Animation Library Preloading
Reconstructed from ReloadAllAnims (Lines 66500-67000).

To prevent visual 'lag' during first-time use, the server preloads 50+ animation libraries for every player upon login:
* **Core Libraries**: PED, GANGS, COP_AMBIENT, CRACK, DEALER.
* **Job Libraries**: BD_FIRE, BOMBER, SAW, OTB.
* **Social Libraries**: KISSING, DANCING, STRIP, SMOKING.
* **Technical**: Triggers 'ApplyAnimation' with a 'null' string to force client-side cache population.
