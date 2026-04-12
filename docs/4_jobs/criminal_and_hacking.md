# Job: House Burglary (Theft Career)
Reconstructed from theft_info (Lines 7200-7300).

### 1. Implementation Details
* **Progression (pTheftlvl)**:
  - Level 1: 15-second steal timer.
  - Level 2: 30-second steal timer (higher value items).
  - Level 3: 45-second steal timer (safe cracking unlocked).
* **Requirements**: Crowbar item (Article ID from 24/7).
* **Logic**: Command /theft triggers a 17-second stationary animation. Success rate influenced by skill.

## 4. Gang-Specific Burglary (/robhouse)
Reconstructed from lines 45500-46000.

### 4.1 Implementation
* **Requirement**: Item 122 (Crowbar). 
* **Minigame**: Triggers 'JobTempProcess 9' (10 cycles of Y/N prompt).
* **Risk**: Every cycle has a random chance to trigger an automated 911 dispatch ('[ALARM] Intruder detected!').
* **Loot**: Success increments 'vgAmount' in the nearest robbery van (ID 11745 pickup).

## 4. Hacker Career Tiers (hacker.inc)

### 4.1 Introductory Questline
* **Quest 1**: Nearby player surveillance (15.0m). Rewards ,500.
* **Quest 2**: Coordinate tracking. Sets 'HackReady' flag and GPS waypoint.
* **Quest 3**: Wanted suspect database query. Requires character level 7.
* **Quest 4**: Government vehicle engine hijacking. 

### 4.2 Progressive Abilities (pHacker 1-6)
* **Level 1**: Basic info gathering (/hacker).
* **Level 2**: GPS tracking of active characters. Refreshes every 5 seconds.
* **Level 3**: Anonymous global announcements. 1-hour cooldown.
* **Level 4**: Remote Jail Release (unarrest). 1-hour cooldown.
* **Level 5**: Government vehicle engine bypass. 15-minute cooldown.
* **Level 6**: Central Bank theft (,000). 6-hour cooldown. Triggers Level 4 Wanted Status.
