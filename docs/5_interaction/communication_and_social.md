## 2. Desktop Interface (PhoneDesktop)
Reconstructed from lines 13500-14000.

### 2.1 Core Applications
* **Phone App**: Button 3. Dialing and Call history.
* **Contact List**: Button 7. Synced with phone_contacts table.
* **Messages**: Button 10. Synced with phone_messages table.
* **Wallpaper Hub**: Selection from 13 HEX color variants.

## 3. Communication Logistics
* **Call Sync**: Uses 'PhoneIncome' and 'PhoneOutcome' TextDraw arrays to manage real-time call states.
* **Mute Logic**: Button 35 (mute) toggles a session flag to block local chat during calls.

## 4. Multi-Media Integration
Reconstructed from D_RADIO logic (Lines 35500-36000).

* **Live Streams**: Technical links to external MP3 streams (Kiss FM, Bayraktar, NRJ).
* **Walkie-Talkie Settings**: 
  - Channel: 1 to 999. Factions (Type 4) have prioritized frequencies.
  - Slot: 1 to 99 privacy sub-layers.
  - Encryption: If a player is 'Tied' or 'Gagged', radio access is automatically blocked.

## 2. Interactive Document Sharing
Reconstructed from lines 16500-17000.

Players can share persistent character data via the interaction menu:
* **ID Card**: Displays Level, Job, and Sex.
* **Badge**: Shows Faction Rank and Title.
* **Licenses**: Shows Driving (A/B/C), Weapon, and Fishing status.
* **Medical Card**: Displays Health (%) and Addiction level.
* **Skill Card**: Displays Weapon Masteries (Deagle, M4, etc.).

## 3. Administrative Field Tools
* **Spectate**: Real-time camera link to target.
* **Force Teleport**: Admin moves to player or pulls player to them.
* **Integrated Punishment**: Mute/Jail/Warn/Ban triggered with reason logging directly from the cursor interface.

## 4. Roleplay Communication Technicals
Reconstructed from lines 41000-42000.

### 4.1 Chat Layering
* **Whisper (/w)**: Range restricted to 2.0m. 
* **Shout (/s)**: Range expanded to 35.0m. Plays 'shout_in' animation.
* **Persistent Actions (/action)**: Creates a static 3D Text Label at coordinates to describe environmental RP.

### 4.2 Physical RP Constraint
* **Kidnapping (/tie)**: Freezes target and attaches 'Rope' object. Requires target to be cuffed or in a vehicle.
* **Gagging (/gag)**: Sets a 600-second session flag blocking all chat-based commands.
* **Unmasking**: Enforcement characters can use the menu to remove a suspect's functional Mask item.

## 5. Drug Consumption & Addiction Mechanics
Reconstructed from /usedrugs logic (Lines 43000-43500).

### 5.1 Health Thresholds
Max HP capacity is dynamically capped based on the 'pAddiction' variable:
* **Addiction < 2000**: Max 120 HP.
* **Addiction < 5000**: Max 140 HP.
* **Addiction > 5000**: Max 160 HP (Reward for high-tier illegal RP).

### 5.2 Side-Effects
* **Visuals**: Triggers weather ID -68 (Narcotic Bloom) and SetPlayerDrunkLevel(3000).
* **Lomka Reset**: Every use clears the 'pStartLomka' flag and adds 5 * grams to the addiction meter.

## 6. Proximity Chat Engine
Reconstructed from ProxDetectorChat technicals (Lines 48500-49000).

### 6.1 Distance-Scaled Fading
* **Logic**: Uses 'GrayColorConvert' to dynamically shift text color from WHITE to DARK GRAY as the recipient moves away from the sender.
* **Range**: Max audibility hardcoded to 20.0m.
* **Segmentation**: Text strings longer than 128 characters are automatically split into multi-line packets with '...' continuity markers.
