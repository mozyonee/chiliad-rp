# Faction: Player-Created Families
Reconstructed from gFamily array (Lines 7500-8000).

### 1. Organization Structure
* **Management**: Leader renamed 9 custom ranks. Color selection from 13 HEX codes.
* **Assets**: Shared Warehouse (famSklad), Bank account (famSkladMoney), and Base House (famHouse).
* **Progression**: Tracks Influence Points (famPoint) and 'Talons' (org currency).

### 2. Fleet Persistence (CarFamily)
* **Capacity**: Up to 5 vehicles based on upgrades.
* **Tuning**: 14 persistent component slots synchronized for all organization vehicles.

## 4. Family Command & Rank Sovereignty
Reconstructed from D_FAMILY_SET (Lines 29000-29500).

### 4.1 Permission Matrix
Leaders assign a 'minRank' (1-8) for seven critical actions:
1. **Invitation**: Authority to add new members.
2. **Dismissal**: Authority to kick members.
3. **Rank Control**: Authority to promote/demote.
4. **Storage (Sklad)**: Withdrawal of Mats/Drugs.
5. **Financials**: Withdrawal from family bank.
6. **Fleet Spawn**: Authority to spawn org vehicles.
7. **Asset Purchase**: Authority to buy new fleet vehicles.

### 4.2 Cultural Identity
* **Nation System**: 10 hardcoded ethnic affinities (African, Latino, Russian, etc.) influencing default skin sets and spawn locations.

## 4. The Priton System (Drug Monopoly)
Reconstructed from Business ID 56 (Lines 19500-20000).

### 4.1 Production Cycle
1. **Harvest**: Initiated by Rank 8+ members. 
2. **Logistics**: Requires Pony Van (ID 482). 2,000 units per load.
3. **Storage**: Max capacity 10,000 units. 

### 4.2 Economic Control
* **Pricing**: Mafia leader sets price (- per gram).
* **Bulk Trade**: Gangs (/fType 4) can purchase massive stock for their internal faction storage.
* **Revenue**: Profits are siphoned into the Mafia Faction Bank (Bank).

## 5. Biker Faction Economy
Reconstructed from specialized stock logic (Lines 21500-22000).

### 5.1 Resource Limits
* **Materials**: Max 300,000 units in shared armory.
* **Drugs**: Max 10,000 grams.
* **Bank**: Max ,000,000 faction revenue.

### 5.2 Weapon Conversion
* **SDS Pistol**: 150 Materials.
* **Desert Eagle**: 250 Materials.
* **Shotgun**: 200 Materials.
* **Logic**: Requires Rank 3+ to withdraw materials for crafting.

## 6. Mafia Interrogation & Control Technicals
Reconstructed from lines 45000-46000.

### 6.1 Constraint Mechanisms
* **Blindfold (/bag)**: Destroys vision by showing a black fullscreen TextDraw (p_mh). Blocks all other UI layers.
* **Technical Stripping**: /takeradio and /takephone set PVar flags that intercept 'OnPlayerCommandText' and 'OnPlayerClickPlayerTextDraw' to block communication.
* **Gagging**: Blocks the player from sending any local or global chat packets for 600 seconds.

### 6.2 Economic Extortion (Bizwar)
* **Cooldown**: Global BizHourTime prevents rapid-fire territory contesting.
* **Logic**: Minimum 9 faction members must be online to initiate or defend a business kickback contest.
