# Factions: Enforcement Infrastructure (MDC)

## 1. Mobile Data Computer (Computer_TD)
Reconstructed from lines 11500-12000.
* **Interface**: 33 layers simulating a modern OS.
* **App Modules**: Profile, Patrols, Calls, Wanted, Orders.
* **Functional Logic**: Requirement: Must be in a Type 4 vehicle. Button 11 (Office) queries characters.cID stats.
* **Search Engine**: Button 16 (Search) allows officers to query Names or Plate IDs.

## 2. Arrest & Fine Logistics
Reconstructed from lines 20000-20500.

### 2.1 Fine Structure
* **Weapon License**: Issued via Government/Police for ,000. Expires in 30 days.
* **Surrender Bonus**: Voluntary surrender at a precinct reduces jail time and fines by 50%.

### 2.2 Prison Confinement
* **Duration**: Calculated as WantedStars * 600 seconds.
* **Bail**: 15% of the total fine is added to the State Treasury if the suspect surrenders.

## 3. Mobile Data Computer (MDC) Queries
Reconstructed from D_MDC_DB logic (Lines 25000-25500).

### 3.1 Citizen Search
* **Data Points**: Character Age, Sex, Ethnos, and Primary Residence (House ID + Area Name).

### 3.2 Vehicle Database
* **Query**: Search by Plate ID ('number' column).
* **Returns**: Owner Name, Model Name (from VehicleNames array), and Color indices.

### 3.3 Property Audit
* **Houses**: Displays Owner, Class (Economy/Luxury), and current Tax valuation.
* **Businesses**: Shows Owner name, Business Type, and current Warehouse stock percentage.

## 4. FBI Spy & Disguise System (D_SPY)
Reconstructed from lines 36500-37000.

High-ranking FBI members (Rank 3+) can adopt 'Undercover' identities:
* **Identity Theft**: Select from 14 other Faction IDs (Gangs, Mafia, News).
* **Visual Sync**: Automatically adopts the target faction's whitelisted Skin ID and Name Color.
* **Communication**: FBI members retain access to the shared Department frequency (/d) while in disguise.
* **Reversion**: Duty toggle or logout restores the default FBI identity state.

## 5. Suspect Dragging Physics (GotoInfo)
Reconstructed from player_timer technicals (Lines 65500-66000).

Enforcement characters use a coordinate-linked physics engine to transport cuffed suspects:
* **Movement Sync**: Suspect's position is updated every second to the officer's coordinates.
* **Separation Logic**: If distance > 20.0m, suspect is forcefully teleported to the officer.
* **Stuck Detection**: If suspect is stationary for 10 seconds ('gtStayed'), the server executes a 'ShiftCords' 1.5m forward warp to bypass geometric collisions.

## 6. Cyber-Crime Surveillance (hacker.inc)

* **Auditing**: Enforcement characters can use /hacker [id] to view a target's criminal 'Hacking History'.
* **Data Stack**: Fetches 'hacker_stats' table entries showing precise timestamps and descriptions of illegal hacks.
* **Anti-Cheat Whitelist**: Specific hacking actions trigger 'SendAdminAttention' if executed outside of hardcoded quest parameters.

## 4. 911 Dispatch Technicals (dCallService)
Reconstructed from lines 30000-31000.

### 4.1 Citizen Interface
* **Validation**: Minimum 5, maximum 40 characters for the incident description.
* **Geolocation**: Automated Zone_GetNameByCoords detection attached to every dispatch entry.

### 4.2 Responder Interface (dGetServiceCall)
* **Data Stack**: Shows Caller Name, Time, Incident Details, and real-time Distance (in meters) to the scene.
* **Operations**: Responders 'Accept' a call to trigger a waypoint and global notification to their faction.
