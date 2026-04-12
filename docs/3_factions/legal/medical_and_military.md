# Factions: Medical Sovereignty

## 1. Professional Leaderboards (/topmed)
Reconstructed from lines 44000-44500.
* **Data Source**: Queries character table for 'MedHeal' column.
* **Logic**: Displays the Top 5 contributors. MedHeal is incremented on every successful /heal completion.

## 2. Emergency Response
* **Cure Wounded (/cure)**: Requires target in Stage 1 (Wounded). Uses 2.5s BOM_Plant animation to restore active character state.
* **Field Surgery**: /heal restricted to Ambulance interior or hardcoded Hospital zones.

## 3. Specialized Addiction Therapy
Reconstructed from /cure logic (Lines 61500-62000).

* **Mechanism**: Reduces the 'pAddiction' character variable.
* **Process**: Requires character to be in a hospital bed. 10-second 'therapy' timer.
* **Technical**: Triggers a global reset of the 'lomka' (withdrawal) animation flags for the patient.

# Factions: Military Logistics (Army)

## 1. Material Supply Chain
Reconstructed from lines 29500-30000.

### 1.1 Base Infrastructure
* **Army LS**: Main material production hub. 
* **Army SF**: Specialized in Air/Sea logistics using Helis (Cargobob).

### 1.2 Logistics Loop
* **Command /load**: Used in Barracks (ID 433) to collect material boxes from the Factory.
* **Command /unload**: Transfers materials from vehicle to faction storage.
* **Base-to-Base**: Specific logic for 'MatsArmyCar' PVars to track transport between bases for global rebalancing.
