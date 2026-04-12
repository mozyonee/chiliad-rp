## 4. Professional Service Metrics
Reconstructed from Taxi/Incass logic (Lines 20500-21500).

### 4.1 Taxi Operations
* **Dynamic Pricing**: Drivers set per-KM rates between  and .
* **Filtering**: Drivers set an 'Accept Radius' (500m - 2000m) to prioritize local calls.
* **Branding**: 13-character slogan attached to the vehicle HUD.

### 4.2 Cash-in-Transit (Incass)
* **Workflow**: Rent Van () -> /bload at Business -> Deliver to Bank.
* **Commission**: Fixed percentage of total 'Revenue Bags' transported.

## 5. Automated Licensing: Driving School
Reconstructed from QueInfo array (Lines 29000-30000).

### 5.1 Theory Exam
* **Structure**: 9 randomized multi-choice questions.
* **Failure**: > 2 incorrect answers triggers an immediate 'Test Failed' state and 10-minute cooldown.

### 5.2 Practice Phase
* **Air Exam**: Model 487 (Maverick). Requires completing the 'AutoCPMav' race route.
* **Sea Exam**: Model 452 (Marquis). Requires completing the 'AutoCPBoat' route.
* **Automation**: Vehicles are spawned in a Private Virtual World (playerid + 1) to prevent collision griefing.

## 6. Dynamic Bus Route Engine
Reconstructed from LoadBusRoutes and LoadCheckpoints (Lines 70000-71000).

### 6.1 Route Infrastructure
* **Checkpoint Types**: Race Checkpoints (Model 0/1) for navigation and Dynamic Spheres (2.0m) for stop detection.
* **Automation**: Stops automatically generate model 1257 (Bus Stop) with re-textured materials ('bailbonds2_LAn').
* **Labeling**: 3D Text Labels display Route Name and real-time Passenger Counts.

### 6.2 Payoff Logic
* **Round Trip**: Calculated as CheckCount * CheckPrice.
* **Salary Accumulation**: Paid upon completion of the full route via 'dBusRouteEnd' dialog.
