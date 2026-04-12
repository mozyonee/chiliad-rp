## 3. Urban Maintenance: Sewerage
Reconstructed from lines 4100-4120.
* **Infrastructure**: 10 Manhole locations in 'Sewer' array.
* **Logic**: Requires Maintenance Uniform (Skin 8). Uses Y/N minigame to clear waste.
* **Reward**:  per unit of trash delivered.

## 4. Agriculture: Egg & Apple Farms
Reconstructed from Egg/sad_apple arrays (Lines 4150-6000).

### 4.1 Egg Farm
* **Logic**: 8 Chicken nodes. Requires managing Feed (gKorm) and production timers (gTime).
* **Collection**: Eggs stored in EggSklad before being sold.

### 4.2 Apple Farm (Massive)
* **Scale**: 833 individual apple tree nodes.
* **Logic**: Manual harvesting via 'sad_apple' coordinates. Tied to intro quest progression.

## 5. Visual Feedback: Industrial Task Overlays
Reconstructed from ConvGlobal/TreeGlobal arrays (Lines 11000-12000).

### 5.1 Sawmill UI
* **Log Processing**: Overlay shows Model 14872 (Wood). Progress bar syncs with 'ConvActionTime' timer.
* **Tree Cutting**: Overlay shows Model 847 (Tree). Requires proximity to the object.

### 5.2 Meat Factory UI
* **Carcass Sync**: 3 specialized overlays (MeatCowTD, MeatDeerTD, MeatBarTD) showing 3D previews of the carcass being processed.
* **Hygiene Lock**: Progress bar is automatically replaced by a 'Wash Instruments' prompt when the hygiene threshold is met.

## 6. Conveyor Logistics: Box & Material Creation
Reconstructed from ConvPlayer arrays (Lines 13500-14000).

### 6.1 Multi-Stage Processing
* **Stage 1 (Raw)**: Overlay shows Model 11716 (Material Stack).
* **Stage 2 (Refined)**: Overlay shows Model 18635 (Processed unit).
* **Stage 3 (Finished)**: Overlay shows Model 1271 (Shipping Box).

### 6.2 Implementation
* **Logic**: Standardized 'ConvPlayer' array supports 4 separate work benches.
* **Sync**: Progress bar (Button 4) is synchronized across all bench variants.

## 7. Emergency HUD: Firefighting Engine
Reconstructed from FireTargetStatus/FireTotalProgress (Lines 15500-16000).

### 7.1 Visual Feedback
* **Target Bar**: 'FireTargetStatus' displays percentage (100%) for the specific object being extinguished.
* **Global Progress**: 'FireTotalProgress' displays the server-wide building restoration state.
* **Logic**: Uses 'usebox' re-textured layers to create real-time filling effects.

## 8. 22-Item Crafting Engine (D_CRAFT)
Reconstructed from lines 17000-18000.

### 8.1 Resource Categories
* **Cloth (pCloth)**: Harvested from Tailors.
* **Metal (pMetal)**: Salvaged from Mining.
* **Stone (pStone)**: Extracted from Construction sites.
* **Dress (pDress)**: Premium textile for high-end items.

### 8.2 Technical Recipes
| Item | Material Cost | Success Rate |
| :--- | :--- | :--- |
| Mask | 25 Cloth | 95% |
| Crowbar | 25 Metal | 95% |
| Backpack | 50 Cloth, 25 Metal | 85% |
| Bulletproof Vest | 70 Metal | 70% |
| High-Tier Guitar | 150 Cloth, 20 Metal | 10% |

## 9. Construction Career: Industrial Tiers
Reconstructed from tBuild logic (Lines 49000-50000).

### 9.1 Professional Progression
* **Tier 1 (Packing)**: Uses BOM_Plant_Loop. /task. Chance to generate 'pStone'.
* **Tier 2 (Logistics)**: Uses SPECIAL_ACTION_CARRY with Object 2060 (Cement Bag).
* **Tier 3 (Technical)**: High-Tier Welding. Uses 'wash_up' animation and Y/N minigame. /task.

## 10. World Physics: Casino Lift System
Reconstructed from lines 48500-49000.
* **Mechanic**: Multi-stage movement between Interior levels.
* **Technical**: Triggers coordinate shifts and Virtual World updates to simulate a moving elevator cabin.

## 11. Specialized Harvesting: Egg Farm
Reconstructed from MAX_EGG logic (Lines 50500-51000).

### 11.1 Infrastructure
* **Capacity**: 8 persistent chicken nodes in the 'Egg' array.
* **Workflow**: 
  1. **Feeding**: Requires 'Korm' (Feed) interaction (attaches model 19562).
  2. **Incubation**: Automated 'gTime' timer tracks egg production.
  3. **Collection**: Eggs are stored in 'EggSklad' and must be sold via the Market Stall system.

## 11. Specialized Harvesting: Egg Farm
Reconstructed from PlayerEgg logic (Lines 50500-51000).

### 11.1 The Incubation Loop
1. **Setup**: Player uses ALT at a chicken node to start tenure.
2. **Nutrition**: Requires 'Korm' (Feed) interaction, attaching model 19562 to the player.
3. **Production**: Automated 'gTime' timer generates physical Egg items stored in 'EggSklad'.
4. **Sale**: Harvested eggs must be sold via the player-run Market Stalls.

## 11. Specialized Harvesting: Egg Farm
Reconstructed from PlayerEgg logic (Lines 50500-51000).

### 11.1 The Incubation Loop
1. **Setup**: Player uses ALT at a chicken node to start tenure.
2. **Nutrition**: Requires 'Korm' (Feed) interaction, attaching model 19562 to the player.
3. **Production**: Automated 'gTime' timer generates physical Egg items stored in 'EggSklad'.
4. **Sale**: Harvested eggs must be sold via the player-run Market Stalls.

## 12. Underwater Salvage: Diver Job
Reconstructed from Diver array (Lines 69000-69500).

### 12.1 Implementation Details
* **Infrastructure**: 15 submerged nodes across the sea floor.
* **Reward Tiers**: 
  - Model 1578: Low value salvage.
  - Model 1575: High-tier industrial scrap ( per unit).
* **Constraint**: Requires Diving Suit (Article ID 6). Character must swim into the dynamic sphere to trigger collection.

## 13. Meat Factory Algorithm (Technical)
Reconstructed from CreatePlayerMeatArray (Lines 71500-72380).

Processing logic is driven by a pre-calculated task array:
* **Randomization**: Weights are generated in segments (e.g., 10.0-14.0 lb for Cow) until the total carcass weight is reached.
* **Segmentation**: Typically results in 12-18 individual 'Cut' actions per animal.
* **Yield**: Character receives physical cash and 'MeatTotal' session points based on the aggregate weight processed.

## 14. Meat Factory Implementation (meat.inc)

### 14.1 Carcass Matrix
* **Capacity**: 14 persistent carcass nodes.
* **Model 19833 (Cow)**: Nodes 0-3. Weight: 170-190 Lbs. Area: (948.1, 2174.1, 1011.8).
* **Model 19315 (Deer)**: Nodes 4-7. Weight: 110-130 Lbs. Area: (936.0, 2151.8, 1011.6).
* **Model 2589 (Pork)**: Nodes 8-13. Weight: 140-160 Lbs. Area: (962.4, 2123.0, 1016.6).

### 14.2 Cutting Algorithm
* **Logic**: 'MeatCut' callback decrements weight using character-specific random segments.
* **Auto-Respawn**: 'MeatRenewal' triggers after 5-8 minutes once weight hits 0.0.
* **Conveyor**: 5 random delivery zones assigned via 'EndMeatProcess' to distribute player traffic.

## 15. Sawmill Implementation (sawmill.inc)

### 15.1 Tree Integrity Logic
* **Nodes**: 21 unique trees defined in 'SawmillTree' array.
* **State**: Starts at 100.0% integrity. Decremented by 20.0% per successful 'SawmillTreeCut' cycle.
* **Output**: Successfully cutting a tree attaches two log objects (Model 684) to Bone 6 (Right Hand).

### 15.2 Interactive Dialog
* **NPC Context**: dSawmillDialog step 1 contains localized Roleplay text (' ...').
* **State Lock**: Sets 'SawmillDialog' PVar to track conversation depth and prevent concurrent dialog spam.

# Job: Meat Factory (Industrial)
Reconstructed from Lines 100-250.
### 1. Implementation Details
* **Structure**: Uses MeatData enum.
* **Carcasses**: Cow (19833), Deer (19315), Pork (2589).
* **Weights**: Random range 110.0 - 190.0 Lbs per carcass.
* **Mechanic**: Knife Hygiene (PVar MeatWashInstr) forces sink interaction every 3 units.

# Job: Sawmill (Industrial)
Reconstructed from Lines 300-500.
### 1. Implementation Details
* **Structure**: Uses SawmillData enum.
* **Trees**: 13 hardcoded locations in SawmillTree array.
* **Progression**: Tracks cSawmillExp to unlock faster processing.
* **Sub-system**: Conveyor system converts logs (14872) into Boxes (1271).
