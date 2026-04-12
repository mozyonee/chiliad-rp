# External Dependencies
Reconstructed from lines 1-100.
* **a_mysql (R41-4)**: Critical for persistent data.
* **streamer**: Manages 100k+ world objects.
* **Pawn.CMD**: High-performance command processor.
* **nex-ac**: Server-side anti-cheat suite.
* **samp_bcrypt**: SHA-256 hashing for passwords.
* **textdraw-streamer**: Dynamic UI optimization.
* **Pawn.RakNet**: Low-level packet manipulation.

## 6. Administrative Infrastructure Tools
Reconstructed from dCreateHouse/dCreateBusiness logic (Lines 31000-32000).

### 6.1 Asset Creation Engine
Admins (Level 7) utilize a sequential dialog tool to persist high-value assets:
* **House Spawner**: Sets Class (1-4), Price, Interior ID (from hinterior_info), and dual coordinate sets (Entrance and Parking/Garage).
* **Business Spawner**: Sets Type (1-30), Interior, and specialized Gas Pump coordinates if Type 5 (AZS).

### 6.2 Pickup & Marker Editor (D_PICKUP_EDIT)
Technical editor for the 200+ world markers:
* **Types**: 1-Line technical field defining interaction type (Teleport, Inventory, Faction).
* **Teleport Map**: Configures tpX, tpY, tpZ, and tpAngle for world transitions.
* **Dynamic Labeling**: Real-time update of 3D text strings attached to the pickup.

## 9. Administrative Creation Tools
Reconstructed from lines 45500-46000.

### 9.1 Asset Persistence
* **House Creator**: /createhouse saves entrance, exit, and garage coordinates to character PVars before committing to MySQL.
* **Business Creator**: /createbusiness includes technical config for AZS (Gas Station) pump coordinates.
* **Sovereign Deletion**: /deletehouse and /deletebusiness perform cascading SQL purges of ownership, inventory, and world objects.

## 11. Spatial Interaction Technicals
Reconstructed from lines 48000-48500.

### 11.1 Line-of-Sight Engine (Look-At)
Technical functions 'IsPlayerLookingAtObject' and 'GetObjectPlayerIsLookingAt' provide precise world interaction:
* **Logic**: Uses 'GetPlayerCameraFrontVector' multiplied by a distance coefficient math to detect the object ID at the center of the character's vision.
* **Usage**: Powering high-fidelity interactions without requiring physical proximity or 3D labels.

## 15. Real-Time Asset Creation HUDs
Reconstructed from HouseCreation and BusinessCreation logic (Lines 71500-72380).

Admins (Level 7) utilize a structured verification HUD before persisting assets:
* **House HUD**: Displays Class, Interior Name (from hinterior_info), and calculated coordinates for Entrance/Garage.
* **Business HUD**: Displays Type (24/7, AZS, etc.) and specialized configurations for Gas Pumps if applicable.
* **Commit Logic**: Data is only written to MySQL after the admin clicks 'Proceed' in the DST (Table-Header) dialog.

## 16. Standardized Audit Schema (typelog.inc)

Every system action is categorized by a Type ID for the MySQL 'logs' table:
* **Moderation**: 1 (KICK), 2 (WARN), 3 (BAN), 4 (SKICK), 8 (JAIL), 10 (MUTE).
* **Personnel**: 11 (TEMPMEMBER), 12 (UVAL), 18 (GIVE_RANK), 19 (UNINVITE).
* **Identity**: 7 (CHANGENAME), 14 (DELL ACC).
* **Asset Control**: 20 (ASELLHOME), 21 (GZ_COLOR).
* **Technical**: 22 (ADM_AVIG).

## 5. Premium VIP Tier Specifications
Reconstructed from dDonatePremium logic (Lines 33000-33500).

| Feature | Bronze (180c) | Silver (400c) | Gold (600c) |
| :--- | :--- | :--- | :--- |
| **Salary Boost** | +7% | +12% | +20% |
| **Jail Reduction**| -10% | -15% | -20% |
| **Garage Slots** | +0 | +2 | +10 |
| **CCoin PayDay** | 0 | 1 CCoin | 2 CCoin |
| **Job Exp Boost** | +10% | +20% | +30% |

## 6. Influence & Promocode Rewards (D_PROMO)
Reconstructed from lines 33500-34000.

Collaborators set custom 'Starter Packs' for their codes:
* **Cash Reward**: ,000 to ,000 (instantly added to pCash).
* **Skill Mastery**: One weapon mastery (Deagle, AK47, etc.) set to 100%.
* **License Sets**: Selection between Driving, Air, Water, or Weaponry certs.
* **Persistence**: Uses promocode_used table to track redemption by character name.

