# Factions: Shared Logic & Specifications
Reconstructed from lines 3800-3900.
| ID | Type | Key Features |
| :--- | :--- | :--- |
| 1 | fGOVERNMENT | Tax control, welfare grants. |
| 2 | fENFORCEMENT | MDC access, cuffs, taser, arrest. |
| 3 | fMEDIC | Healing, addiction cure. |
| 4 | fGANG | Territory captures, material running. |
| 5 | fMAFIA | Bizwars, drug priton control. |
| 6 | fMEDIA | Global ether broadcast, ad editing. |

## 4. Leader Sovereign Controls (D_FACTION_EDIT)
Reconstructed from lines 26500-27500.

### 4.1 Organizational Purge
* **Deletion**: Triggers a cascading MySQL DELETE across action_ranks, action_skins, and action_fleets.
* **Member Reset**: Automatically resets pMember, pRank, and pLeader for all characters (online and offline) matching the ID.

### 4.2 Fleet & Branding
* **Whitelisting**: Leaders can assign up to 10 specific skin IDs (Skins) for their organization.
* **Siren Control**: Exclusive to Type 2 (Police) and Type 3 (Medic). Toggles physical siren objects and light flags.
* **Spawn Sync**: Leaders use ALT at desired coordinates to set the persistent fleet spawn point.

## 5. Organizational Diplomacy Matrix
Reconstructed from D_DIPLOMATION logic (Lines 32000-33000).

Illegal factions (Gangs/Mafia) manage shared state via a 3-way status matrix:
* **Neutral (Default)**: Standard interaction.
* **War**: Unlocks territory capturing and bizwars. 
* **Alliance**: 
  - **Invite Loop**: Requires sender to use 'Alliance' and recipient to 'Accept'.
  - **Safety**: Members of allied factions cannot damage each other in Ghetto/Safe zones.

## 6. Personnel Control & Blacklisting
Reconstructed from lines 47500-48000.

### 6.1 Blacklist Database (SQL-Backed)
* **Structure**: Dual tables 'fractions_blacklist' and 'family_blacklist'.
* **Data Stack**: bl_id (Character Link), bl_fraction (Org ID), bl_name, bl_reason, and bl_date.
* **Mechanic**: The /invite command performs an async query against these tables; re-joining is blocked until an Admin/Leader uses /unbl.

### 6.2 Activity Auditing (/offgettime)
* **Logic**: Queries 'online_player' table for the last 7 days.
* **Returns**: Daily breakdown of 'Online Time' vs 'AFK Time' (calculated via SEC_TO_TIME).
* **Talons**: Character reputation tracked via 'talon_fam' column, viewed via /top_talon leaderboard.

## 7. Ghetto War Engine Technicals
Reconstructed from ghetto_war logic (Lines 55500-56000).

### 7.1 Real-Time Sync
* **Heartbeat**: 1000ms timer 'ghetto_war' loops through active GangZones.
* **HUD Sync**: CaptPlayer TextDraws updated every second showing Home vs Away scores.
* **Capture Duration**: Hardcoded 10-minute window (600 seconds).

### 7.2 Economic Outcome
* **Ownership**: Winner gains control of the 'gFrakVlad' ID in the gangzone table.
* **Priton Link**: Controlling Zone 13 automatically grants the faction control over the Mafia Drug Priton pricing.

## 8. Global State-vs-Crime War (TimerRobb)
Reconstructed from lines 59000-60000.

### 8.1 Scenario: Vault/Armory Breach
* **Trigger**: Accepts = true. Triggers a 15-minute server-wide event.
* **Automation**: Zone GZ_ZONE1 flashes RED globally. HUD shifts to 'WAR' mode.
* **Scoring**: Tracks aggregate 'KillerWarCop' vs 'KillerWarGang'.
* **Failure State**: If Crime fails to deliver materials within the window, the robbery transport (VehicleWareHouse) is auto-respawned and stock is reset.

## 9. Personnel Career Audit (jobinfo)
Reconstructed from joblist_callback (Lines 65000-65500).

Organizations maintain a persistent historical log of all personnel changes:
* **History Depth**: The /joblist command fetches the last 15 organizational events.
* **Data Stack**: 
  - date_invite / date_uninvite: Precise timestamps of membership.
  - warnings: Number of faction-specific warns held at time of exit.
  - rank / faction: Organization and tier identification.
  - reason: String logged during /uninvite or /kick.
