## 5. Trucker Logistic Hubs
Reconstructed from GPS coordinates (Lines 18000-18500).

* **Hub 1**: Main Depot (2215.7, -2222.5)
* **Hub 2**: Montgomery Branch (1219.8, 189.5)
* **Hub 3**: Palomino Creek Branch (2249.0, -81.1)
* **Hub 4**: Fort Carson Logistics (1708.5, 407.1)

## 6. Trailer Fleet Leasing (D_TK_TRUCK_1)
| Trailer Type | Model | Cost | Usage |
| :--- | :--- | :--- | :--- |
| Small Product | 450 | ,500 | Retail restocking (24/7). |
| Large Material| 591 | ,500 | Factory-to-Warehouse bulk transport. |
| Fuel Tanker | 435 | ,800 | Gas Station emergency refills. |
| Construction | 591 | ,000 | Transporting Stone/Metal crates. |

## 7. Trucker Supply Chain: Loading Loop
Reconstructed from LoadProd technicals (Lines 68500-69000).

### 7.1 Delivery Mechanics
1. **Setup**: Player uses ALT at Hub to spawn a Trailer (Model 584).
2. **Loading**: 30-second window to reach the loading dock.
3. **Sync**: Progress bar updates every 150ms showing 'Count_Prod' (Max 2000 units).
4. **Handshake**: Requires proximity to the business loading sphere to transfer stock.

## 4. Trunk Storage Specifications (D_TRUNK_LIST)
Reconstructed from lines 24500-25000.

### 4.1 Item Capacities
| Item Type | Unit Limit | Notes |
| :--- | :--- | :--- |
| **Fuel Canister** | 2 Units | 20L emergency refills. |
| **Contraband** | 200 Grams | Drugs/Heroin storage. |
| **Materials** | 1000 Units | Faction crafting resources. |
| **Weapons** | 50 Ammunition | Supports Deagle, AK-47, M4, Shotgun. |

### 4.2 Interactive Constraints
* **Physical Sync**: Trunk must be open ('tOpen' flag). Toggles vehicle component 0 (Boot/Hood).
* **Animation**: 'CRIB_Use_Switch' plays during every storage interaction.

## 5. Number Plate Generation (D_VEH_NUMBER_2)
Reconstructed from lines 35500-36000.

### 5.1 Technical Syntax
* **Format**: '%c %i %c%c' (e.g., 'A 123 BC').
* **Randomization**: Characters pulled from the 'ABC' array (20 variants) and numeric range 100-999.
* **Cost**: Fixed ,000 fee added to the State Treasury.
* **Validation**: Checks for uniqueness against the 'cars' table 'number' column before assignment.

## 6. Technical Field Diagnostics (/remp)
Reconstructed from MechOsmotr logic (Lines 43500-44000).

Provides a real-time status matrix of any vehicle within 4.0m:
* **Physical**: Status of 4 Doors, 4 Panels, 2 Lights, and 4 Tires.
* **Performance**: Engine Health (Percentage of 1000.0) and Battery Charge (vAkum float).
* **Refill Technicals**: Canister interaction (/fillcar) adds 10L. Station refueling (/fill) uses business-specific prices.

## 7. Multi-Branch Category Classification
Reconstructed from IsAPlane/IsABoat/IsAMotorcycle logic (Lines 54500-55000).

Vehicles are automatically classified by model ID to determine physical behavior:
* **Planes (VEHICLE_STATE_PLANE)**: 19 models including Hydra, Maverick, and Stuntplane.
* **Boats (VEHICLE_STATE_BOAT)**: 10 models including Marquis, Speeder, and Squalo.
* **Motorcycles**: 21 models including NRG-500, FCR-900, and Sanchez.
* **Bicycles**: Model 509, 481, 510. Forced disabling of Light and Engine mechanics.

## 8. Dynamic Category Classification
Reconstructed from A_CreateVehicle logic (Lines 54500-55000).

Vehicles are automatically classified by model ID to define physical constraints:
* **Planes (VEHICLE_STATE_PLANE)**: 19 models including Hydra, Maverick, and Stuntplane.
* **Boats (VEHICLE_STATE_BOAT)**: 10 models including Marquis, Speeder, and Squalo.
* **Motorcycles**: 21 models including NRG-500, FCR-900, and Sanchez.
* **Bicycles**: Model 509, 481, 510. Engine and light mechanics are forcefully disabled.

### 8.3 Creation Defaults
* **Resources**: All static vehicles initialize with 150L of Fuel ('vFuel') and 100% Battery ('vAkum').
* **Branding**: Taxi vehicles (420, 438) automatically attach model 19477 with custom material text ('55-55').

## 9. Component-Level Repair Logic (JOBOSMOTR)
Reconstructed from MechOsmotr termination (Lines 58500-59000).

Mechanics perform targeted restoration of 6 vehicle subsystems:
1. **Bodywork**: Resets 'Panels' bitmask in 'UpdateVehicleDamageStatus'.
2. **Structural**: Resets 'Doors' status to 0 (Un-dented).
3. **Electrical**: Full restoration of 'Lights' object functionality.
4. **Logistics**: Instant reset of all 4 'Tires' to 100% durability.
5. **Engine**: Health set to 1000.0. Closes vehicle bonnet automatically.
6. **Battery**: Resets 'vAkum' float to 100.0.

## 10. Mobile Home Interior System (DNK)
Reconstructed from load_trailer and TABLE_DNK (Lines 67000-68000).

Specific vehicles (ID 508 Journey) function as persistent mobile residences with independent interiors.

### 10.1 Technical Schema
* **Positioning**: Stores 'carPos' (X,Y,Z,Angle) and 'carParked' status.
* **Interior World**: Dynamically creates a Virtual World matching the 'carID' to allow for independent interior instances.
* **Branding**: Automatically generates a 3D Text Label showing the owner's name and lock status attached to the vehicle exterior.

### 10.2 Component Persistence
* **Tuning**: Supports 14 component slots ('vehcom_1..14') and persistent Paintjobs.
* **Independent Safe**: Re-textures Model 1210 (Briefcase) inside the interior to store Drugs, Cash, and up to 9 Weapon IDs.

## 11. Comprehensive Tuning Engine (mast_func.inc)

### 11.1 Component Categories
Reconstructed from CustomTypeName array:
1. Spoilers (Cost: -)
2. Hoods (Cost: )
3. Wheels (17 types, Cost: -)
4. Front/Rear Bumpers
5. Vents & Roofs
6. Exhausts (5 variants, Cost: .5k)
7. Sideskirts
8. Lights (Round/Square, Cost: )
9. Nitro (x2, x5, x10, Cost: -)
10. Hydraulics (Cost: )

### 11.2 Compatibility Matrix
* **Logic**: 'IsVehicleUpgradeCompatible' provides model-specific whitelists for 30+ vehicle IDs (400-611).
* **Validation**: Triggers 'AddFixVehicleComponent' to prevent client-side crashes from invalid component application.
* **Branding**: Uses 'components_name' stock to set Global Variables (GVars) for part names (e.g., 'Alien', 'X-Flow', 'Mega').

# Economy: Vehicle Ownership & Parking

## 1. Persistent Parking Mechanic (/park)
Reconstructed from ParkPlayerVehicle (Lines 67500-68000).

* **Validation**: Vehicle must be stationary (GetVehicleSpeed == 0) and outside of any 'GREENZONE'.
* **Interior Blocking**: Parking is disabled inside Virtual Worlds or Interior IDs > 0.
* **Database Sync**: Triggers 'SavePlayerVehicle' which persists 14 tuning slots, Fuel levels, and Battery charge.
* **Spawn Rules**: The saved coordinates become the permanent spawn point for the vehicle on 'OnVehicleSpawn'.
