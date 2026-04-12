[docs/core/lifecycle.md:1-118]
# Server Lifecycle: Boot & Initialization
Reconstructed from Lines 1-2000.
### 1. Global Constants
* **MAX_HOUSE_COUNT**: 500
* **FAMILY_COUNT**: 500
* **MAX_BUSINESS_COUNT**: 65
* **MAX_FACTIONS**: 51
* **PICKUPS_COUNT**: 200
* **TP_COUNT**: 101
### 2. Startup Logic
* **Config Loading**: Reads scriptfiles/mysql.ini via LoadMysqlConfig.
* **Identity Layer**: Logic split into Account (PI), Character (CI), and Session (TI).

## 3. Server-Wide Variable Overrides
Reconstructed from 'dAdminWorks' logic (Lines 27000-28000).

### 3.1 Job Parameters
Admins (Level 5+) can manually override the global economy variables:
* **Meat Factory**: Cow/Deer/Pork prices and 'Renewal Time' (respawn rate).
* **Sawmill**: 'Bailer Price', 'TreeCutTime', and 'ConvActionPrice'.
* **Bus System**: Real-time technical editing of us_description and us_routes coordinates.

## 4. Wounded Stage State Machine
Reconstructed from OnPlayerPrepareDeath logic (Lines 37500-38000).

When character HP reaches 0.0, the 'Stage' system triggers:
* **Spatial Lock**: Creates a 7.5m dynamic sphere (cDeathArea) centered on the death coordinates.
* **Identity Lock**: Prevents respawning for 300 seconds (cDeathTimerSec).
* **Visual Sync**: 
  - In Vehicle: Plays 'CAR_dead_RHS' animation in the current seat.
  - On Foot: Plays 'CS_Dead_Guy' animation.
* **Interaction**: Medics restore the character state via /cure, resetting the cStage bit.

## 5. Anti-Combat Log (ACL) Security
* **Marked Status**: Officers set 'zmarked' PVar on suspects during pursuit.
* **Enforcement**: Quitting while Marked, Cuffed, or Tazed triggers an immediate arrest query.
* **Penalty**: Suspect is moved to jail for (WantedStars * 600) + 1200 bonus seconds.

## 6. Dynamic World Events
Reconstructed from lines 38500-39500.

### 6.1 LastAirDrop (Ghetto War)
* **Trigger**: Automated every 3 hours at 6 mapped coordinates.
* **Reward**: ,500 per kill within the active air-drop zone.
* **Automation**: Map icon 19 (Gang) flashes during the event.

### 6.2 High-Value Combat Rewards
* **Bank Breach**: Officers receive ,500 per criminal killed near vault coordinates.
* **Alcatraz Security**: Enforcement characters receive ,000 for neutralising an escapee.
* **Drug Lab Raid**: Officers receive ,000 for clearing a gang-controlled drug interior.

## 7. Global Economy Initialization (load_economy)
Reconstructed from lines 51000-51500.

### 7.1 Tax & Fee Matrix (Nalog)
* **nalog_1**: Housing Rent (Standard).
* **nalog_2**: Business Hourly Rent.
* **nalog_3**: Food/Retail pricing multiplier.
* **nalog_4/5**: PayDay salary multipliers for State/Private orgs.
* **nalog_6/7**: License and fine coefficients.

### 7.2 Variable Persistence
* **Industrial**: Syncs 'MeatWorkStatus', 'SawmillWarehouseWood', and 'ConvActionPrice'.
* **Banking**: Syncs 'DepositDef' (0.01%) and 'DepositOpti' (0.03%) hourly interest rates.

## 7. Server-Wide Multipliers (load_others)
Reconstructed from lines 51000-51500.

### 7.1 Action Multipliers
* **action_server[0]**: Global X2 multiplier for all industrial job payouts.
* **action_server[1]**: Global X2 multiplier for Character Exp gain during PayDay.
* **action_server[2]**: Global X2 multiplier for CCoin conversion rates.

### 7.2 Resource Hubs
* **tk_unloading[0-3]**: Tracks real-time stock levels across the 4 Trucker Logistic Hubs.
* **biker_benz[0-1]**: Persistent fuel reserves for the two Biker organization HQs.

## 7. Server-Wide Multipliers (load_others)
Reconstructed from lines 51000-51500.

### 7.1 Action Multipliers
* **action_server[0]**: Global X2 multiplier for all industrial job payouts.
* **action_server[1]**: Global X2 multiplier for Character Exp gain during PayDay.
* **action_server[2]**: Global X2 multiplier for CCoin conversion rates.

### 7.2 Resource Hubs
* **tk_unloading[0-3]**: Tracks real-time stock levels across the 4 Trucker Logistic Hubs.
* **biker_benz[0-1]**: Persistent fuel reserves for the two Biker organization HQs.

## 8. Character Startup Sequential Logic (start_character)
Reconstructed from lines 55500-56000.

Every login triggers a high-priority check sequence:
1. **Equipment Sync**: Re-attaches 'Mask' (Item 570) if active in session inventory.
2. **Financial Defaults**: Checks 'pCreditDay' expiry; if defaulted, triggers automated house/car sellback and sets cJail = 1.
3. **License Audits**: Verifies 'pTLicCar/Air/Sea/Weapon' timestamps; resets certification if current time > expiry.
4. **World Sync**: Shows active Bizwar GangZones and AirDrop flashers based on character faction affiliation.

## 9. Technical Heartbeat: Global Timers
Reconstructed from GlobalSecondTimer and player_timer (Lines 64500-66000).

### 9.1 Biological & Time-Based Decay
* **Midnight Pulse**: At 00:00:00, the server purges the 'questsprogress' table for daily tasks and resets admin weekly activity logs.
* **Mute Persistence**: 'pMute' decrements by 1 every second, but ONLY if the character is not AFK (tAFK <= 3).
* **Addiction Withdrawal (Lomka)**: Triggered automatically at XX:10 and XX:40 of every hour if pAddiction > threshold.

### 9.2 Medical Recovery Engine
* **Passive Healing**: Characters in hospital beds or with 'pHospital' flag regenerate 2 HP (Standard) or 3 HP (Premium) every 3 seconds.
* **Completion**: At 95 HP, the recovery state is cleared from the database.
