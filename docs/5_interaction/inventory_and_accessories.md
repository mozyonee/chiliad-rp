# Item & Accessory Database
Reconstructed from Lines 6500-7200.

### 1. Visual Accessories (Attachment System)
* **Glasses (29 types)**: ,500 - ,500. Bone: Eye.
* **Hats/Caps (20 types)**: Standard head attachments.
* **Masks (3 types)**: Functional items that hide character name/ID.
* **Watches (13 types)**: Functional item required for /time.
* **Headphones (4 types)**: Used for in-game radio streams.

### 2. Character Appearance: Clothing Store
Reconstructed from 'ped_buyclothes' (Lines 7200-7300).
* **Skin Catalog**: 79 buyable skins across 4 price tiers ( to ).
* **Logic**: Links Skin ID to database index and price.

## 2. Inventory Management Logic
Reconstructed from lines 15000-15500.

### 2.1 Character Interaction
* **Slot-Based HUD**: 15 slots (InventorySlots_TD) with dedicated 'Amount' (InventoryAmount_TD) overlays.
* **Actions**: Buttons for 'Info' (1), 'Use' (2), 'Pass' (3), 'Split' (4), and 'Throw' (5).
* **Technical**: Each action triggers a specific sub-dialog or coordinate-based distance check (e.g., 'Pass' requires target within 2.0m).

## 3. Container & Storage Specifications
Reconstructed from Storage_TD arrays (Lines 15500-16000).

### 3.1 Global Logic
* **Capacity**: 20 slots per container.
* **Weight**: Hardcoded 20.00 Lbs max capacity.
* **Financials**: Dedicated 'Cash' slot () for shared funds in faction/vehicle storage.
* **Security**: Button 1 (Money) is selectable and triggers a numeric amount dialog.

## 4. Accessory Bone Mapping Matrix
Reconstructed from AtachPlayerAcces logic (Lines 59500-60000+).

Technical offsets for character attachments are hardcoded per Skin ID to ensure visual alignment:
* **Bones**: Uses Bone 2 (Head) for glasses/masks, Bone 1 (Spine) for backpacks/guitars, and Bone 5/6 (Hands) for tools.
* **Offset Precision**: Stores X, Y, Z, RX, RY, RZ floats (e.g., 0.102998, 0.030999, -0.001001) for 300+ unique skin variants.
* **Automation**: Accessing the /acces menu automatically queries this matrix to set initial object positioning.

## 5. Technical Accessory Offset Matrix
Reconstructed from lines 60000-62000.

To prevent model clipping, the server uses a skin-specific offset matrix for all attached accessories:
* **Bones**: 
  - Head (Bone 2): Glasses, Hats, Masks.
  - Hand (Bone 5/6): Phones, Fishing Rods, Tools.
  - Spine (Bone 1): Backpacks, Guitars.
* **Data Points**: Each item model (e.g., 19079 Guitar) defines 6 floats (X, Y, Z, RX, RY, RZ) per Skin ID.
* **Automation**: Logic is handled via the 'AtachPlayerAcces' stock, which is called on every login or equipment change.

## 6. Weapon Holstering Matrix
Reconstructed from SetPlayerAttachedObject logic (Lines 62000-63500).

To maintain high-fidelity roleplay, weapons are physically attached to the character's spine or thigh bones when not active:
* **Primary (Rifle/Shotgun)**: Bone 1 (Spine). Specific offsets for AK-47, M4, and Sniper.
* **Secondary (Pistol/SMG)**: Bone 18 (Thigh). Specific offsets for Deagle and MP5.
* **Automation**: The 'AtachPlayerAcces' stock is triggered on 'OnPlayerWeaponShot' and 'OnPlayerUpdate' to ensure the visible model matches the character's holstered state.
