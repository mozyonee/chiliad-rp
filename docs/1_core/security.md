[docs/core/security.md:1-173]
# Admin Command Hierarchy
Reconstructed from AdminCommand array (Lines 4500-4750).

### 1. Permission Tiers
* **Level 1 (Support)**: /aduty, /pm, /mute, /re (spectate).
* **Level 2 (Moderator)**: /kick, /jail, /slap, /freeze.
* **Level 3 (Senior Moderator)**: /ban, /warn, /unwarn, /sethp, /setarm.
* **Level 4 (Administrator)**: /iban, /setfuel, /gzcolor (faction territory).
* **Level 5 (Senior Admin)**: /setskill, /obj (spawn world objects), /reloadbans.
* **Level 6 (Head Admin)**: /makeadmin, /delacc, /restartservera.
* **Level 7 (Owner)**: /addzone, /asellbiz, /setacc (database override).

### 2. Legal Codes
* **CriminalCode**: Defines 30 offenses with 1-6 stars (Wanted Level).
* **AdministrativeCode**: Defines 30 traffic/minor offenses with physical fines (-).

## 4. High-Security Confinement: Alcatraz
Reconstructed from lines 17000-17500.

### 4.1 Escape Mechanics
* **Trigger**: Requires Lockpick (Item 122).
* **Cooldown**: 20-minute escape window (TI[playerid][tPobeg]).
* **Security Response**: Automated Dept message to all State factions ('[ALCATRAZ] Suspect escaped!').
* **Success**: If suspect reaches 'Escape Zone' (-2114, -2419) without being apprehended, they are unjailed.

## 5. Administrative Report Engine
Reconstructed from lines 21500-22000.

### 5.1 Interaction Modes
* **Simple Mode**: Global broadcast to all online admins.
* **Queue Mode (rep_system)**: Players enter a numbered queue. Admins must 'Claim' a report before answering.
### 5.2 Constraints
* **Cooldown**: 30-second window between reports per character.
* **Mute Logic**: Muted players are blocked from the report system to prevent OOC spam.

## 5. Account Security Layer
Reconstructed from lines 22500-23000.

### 5.1 Authentication Protocols
* **Hashing**: Uses SHA256 with a persistent salt ('jobiden').
* **Google 2FA (TOTP)**: 6-digit dynamic code required if IP differs from 'pLastIP'.
* **Protection**: 3-strike policy for both Password and Google PIN triggers an automated kick.

### 5.2 Multi-Account Integrity
* **Auto-Login**: Sessions bypass secondary PINs if 'player_ip' matches the database 'pLastIP' within a 24-hour window.

## 7. Mass Event Management (D_MP)
Reconstructed from lines 33500-34000.

Admins can orchestrate server-wide events through a specialized mass-interaction layer:
* **Global Waypoint**: Command /mp creates a temporary world marker with a capacity limit (5-100 players).
* **Radial Manipulation**: Triggers actions on every character within a 50m radius:
  - **Mass Vitality**: HP/Armor set to 100.
  - **Tactical Purge**: Disarms all players and freezes movement for event intro.
  - **Uniform Sync**: Forces a specific Skin ID on all participants.
* **Telemetry**: Event name and capacity are logged to the dmins table audit trail.

## 8. FBI Undercover Operations (/fakeid)
Reconstructed from lines 43500-44000.

High-ranking FBI members use 'Undercover IDs' to infiltrate illegal factions:
* **Logic**: Selection of any active Faction ID (Type 1-6).
* **Identity Sync**: Triggers /showid to return the target's Faction Title and a randomized 'Undercover Rank' name.
* **Requirement**: Requires character to be 'Masked' (Item 570) to prevent OOC name recognition.

## 9. Exhaustive Administrative Authority
Reconstructed from lines 46500-47500.

### 9.1 Hierarchy & Core Actions
* **Level 1 (Support)**: /ans, /pm, /weap (search weapons), /mutelist.
* **Level 2 (Moderator)**: /kick, /jail, /mute, /slap, /freeze, /jetpack.
* **Level 3 (Senior Moderator)**: /ban, /warn, /sethp, /setarm, /skick (silent), /markt (save coords).
* **Level 4 (Administrator)**: /iban, /offban, /setfuel, /gzcolor, /ears (spy on SMS).
* **Level 5 (Senior Admin)**: /setskill, /giveitem, /reloadbans, /cc (clear chat).
* **Level 6 (Head Admin)**: /makeadmin, /restartservera, /setstat, /getdonate.
* **Level 7 (Owner)**: /delacc, /createbusiness, /createhouse, /asellbiz.

## 10. Technical Diagnostic HUD (/debug)
* **Metrics**: Coordinates (X,Y,Z), Heading (Angle), Virtual World, Interior ID.
* **Action Tracker**: Real-time ID of the animation the character is currently playing.
* **Network State**: Target character Packetloss and FPS tracking via /internet.
* **Performance Audit (/timestat)**: Displays execution time (ms) for OnPlayerUpdate and GlobalTimer loops.

## 11. Persistent Blacklist Infrastructure
Reconstructed from IsBLName logic (Lines 55500-56000).

* **Verification**: Async SELECT query checks 'bl_id' and 'bl_fraction' before allowing organization recruitment.
* **Audit**: Stores 'bl_date' and 'bl_reason' for persistent record keeping.
* **Sovereignty**: Families maintain an independent blacklist table ('family_blacklist') isolated from State organizations.

## 12. Administrative Hierarchy Management
Reconstructed from stock Moderator logic (Lines 55000-55500).

### 12.1 Authority Promotion
* **Insertion**: Promoting a moderator creates a persistent record in the 'admins' table with 'date_start' and 'CheckName' (author) logs.
* **Cascading Purge**: Removing an admin level 0 triggers a technical MySQL DELETE of all associated permission rows.

### 12.2 Spectator Surveillance (SpecPl)
* **Data HUD**: Displays real-time Ping, LVL, Health, Armor, Weapon ID, Ammo count, and Vehicle Speed.
* **Sync**: Automatically matches the spectator's Virtual World and Interior ID to the target suspect.

## 13. High-Tier Account Management
Reconstructed from CheckDelAcc and password_adm (Lines 56500-57500).

### 13.1 Account Deletion Engine
Admins (Level 7) perform a 2-stage verification purge:
1. **Verification**: First /delacc call returns character stats (Level, Cash, ID) and sets 'delstatus' PVar.
2. **Purge**: Second call triggers a multi-table DELETE including 'cars', 'questsprogress', 'ban', and 'promocode_used'.

### 13.2 Administrative Session Sync
* **IP Guard**: Triggers a 'SendError' alert to all online admins if an admin logs in from an IP differing from their 'pRegIP'.
* **Audit**: Automatically updates 'online_connection' timestamp in the 'admins' table.

## 14. Anti-Cheat Spatial Whitelists
Reconstructed from NotFlyingHack (Lines 65500-66000).

To prevent false-positives, specific high-altitude and interior coordinates are whitelisted from the AirBreak/Fly-Hack detections:
* **Coordinates**: Alcatraz interiors, Mt. Chiliad summit, parachute jump points, and specific Virtual World interiors (VW 50-78).
* **Radius**: Typically a 20.0m to 150.0m radial allowance around the whitelist center.
