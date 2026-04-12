[docs/core/identity.md:1-91]
# Core: Identity (Character Mapping)
Reconstructed from dialog enum (Lines 3000-3500).
### 1. Character Creation Flow
1. **Name**: Validated via IsValidName (Forename_Surname).
2. **Biology**: D_CHAR_ADD_SEX, D_CHAR_ADD_ETHNOS (Latino, Black, White), D_CHAR_ADD_AGE.
3. **Visuals**: D_CHAR_ADD_SKIN (based on ethnic category).
4. **RP Presence**: D_CHAR_ADD_PAME (3D character description).

## 3. Multi-Character Management
Reconstructed from 'characters_panel' logic (Lines 23000-24000).

* **Capacity**: Supports up to 10 characters per OOC account.
* **Context Switching**: Switching characters saves 'cExitPos' (X,Y,Z,VW,Int) and 'cLastSpawn' timestamp before clearing the CI array.
* **Creation**: Character biology (Sex, Ethnos, Age) is immutable after the initial creation dialog.

## 4. State Reset Engine (RemoveSettings)
Reconstructed from lines 39000-40000.

To ensure session integrity, the server performs an exhaustive reset of 150+ variables upon every connection/character switch:
* **Security**: Clears all Anti-Cheat 'Fix' counters and GodMode flags.
* **Job States**: Resets 'tJobSad', 'tJobGun', 'tJobWood', and 'tTrucker' arrays.
* **Inventory**: Clears personal 'pInventory' and 'pActiveTrade' flags.
* **Administrative**: Resets 'adminaccess' and 'SpecPl' session variables.

## 5. Spawn Priority Hierarchy
Reconstructed from 'SettingSpawn' logic (Lines 39500-40000).

1. **Hospital/Jail**: Overrides all other points if character is dead or imprisoned.
2. **Safe Log**: If character logged out < 15 mins ago, restores 'cExitPos'.
3. **Property**: Priority to Family Base -> Private House -> Rented Apartment.
4. **Default**: City Hub spawn if no property is owned.

## 6. Persistent 3D Descriptions (/pame)
Reconstructed from lines 42000-42500.

* **Capacity**: 64-character alphanumeric string.
* **Persistence**: Saved to the 'cPame' column in 'characters' table.
* **Visual**: Creates a dynamic 3D Text Label attached to the character's chest bone.
* **Management**: Players use /dellpame to reset. Officers can use /adellpame for non-RP cleanup.

## 7. Exhaustive Character Column Mapping
Reconstructed from load_character SQL (Lines 54000-55000).

### 7.1 Progression & Social
* **pExpJob[9]**: Multi-slot tracking for industrial/service job expertise.
* **pGunSkill[6]**: Mastery levels for Deagle, Shotgun, MP5, AK47, M4, Sniper.
* **pMarried**: Persistent string link to spouse character name.
* **pPrefix_s**: Manual string for VIP/Admin titles.

### 7.2 State Persistence
* **pHospital**: Binary flag indicating character is in medical recovery.
* **pAddiction**: 0-5000 meter driving withdrawal effects.
* **pZakonp**: Legal status (Lawfulness) influencing faction eligibility.
* **pPlayTime[2]**: [0] Today's session time, [1] Total character age.

## 8. Exhaustive Character Column Mapping
Reconstructed from load_character SQL (Lines 54000-55000).

### 8.1 Progression & Skill Matrix
* **pExpJob[9]**: Tracks professional expertise in Taxi, Bus, Mechanic, Cleaner, and Industrial roles.
* **pGunSkill[6]**: Mastery levels (0-100%) for Deagle, Shotgun, MP5, AK47, M4, and Sniper.
* **pZakonp**: Persistent lawfulness status influencing recruitment into State organizations.
* **Reputation Stats**: 'zahvat' (War kills), 'talon_fam' (Family influence), and 'referals' (OOC conversion counts).

### 8.2 Medical & Death Persistence
* **cStage**: Character status (0: Stable, 1: Wounded, 2: Dead).
* **cDeathArea**: Dynamic Virtual World sphere assigned to the death coordinates.
* **pHospital**: Binary flag indicating character is undergoing medical recovery.

## 9. Biological Decay Mechanics
Reconstructed from GlobalSecondTimer logic (Lines 63500-64000).

### 9.1 Hunger & Thirst (pSatiety/pThrist)
* **Depletion**: Every 60 seconds, both variables decrement by 1 unit.
* **Starvation**: If pSatiety reaches 0, the character loses 5.0 HP every 10 seconds until health reaches the 'Wounded' threshold (10.0 HP).
* **Hydration**: Low pThrist values trigger a hardcoded multiplier on the stamina depletion rate during sprinting.

### 9.2 Restoration
* **Consumables**: Food items (Burgers, Pizza) restore satiety via 'SetFullness' stock.
* **Health Link**: Character cannot regenerate health from Medkits if pSatiety is below 20%.
