# Economy: Business Retail & Articles
Reconstructed from lines 3200-3500.
### 1. Article Management
* **Warehousing**: Businesses must order articles via dBusinessOrder.
* **Trucker Link**: Restocking requires a Trucker player to deliver from a factory.
* **Consumption**: Buying a 24/7 item (Phone, Mask, SIM) decrements the bWarehouse stock.

## 4. Item Logic & Mechanics
Reconstructed from 24/7 and Ammo logic (Lines 27500-28000).

### 4.1 Functional Items
* **Watches (Item 1)**: Required to enable the /time UI layer.
* **SIM Cards**: Triggers a unique number check against TABLE_CHARACTERS before assignment.
* **Lockpicks (Otmichka)**: Consumable item required for the /theft career. 5 units of business stock consumed per item.

### 4.2 Combat & Fitness
* **Gym Supplements**: 'BSN 500mg' and 'Biotech 750mg' items influence character satiety depletion rates.
* **Fighting Styles**: Boxing, Kung Fu, and Kneehead styles are purchased via the Gym dialog and saved to pBox skill column.
* **Armory Restocking**: Ammo stores sell Weapon IDs. Buying a gun automatically decrements 'Ammo Articles' from the warehouse.

## 5. Automated Market Stall Commerce
Reconstructed from lines 50000-50500.

### 5.1 Rental Logistics
* **Eligibility**: Character must not already own a stall (pPalatka check).
* **Duration**: User-defined window (1 to 240 minutes).
* **Fee**: Hardcoded at /hour (added to State Treasury).
* **Inventory**: Async query 'GetMarket' fetches character-specific stock listings from the 'market' table.

## 6. Black Market Economics
* **Priton Interaction**: Crime-factions query 'black_prods' for real-time drug/gun prices.
* **Dynamic Pricing**: Prices fluctuate based on the 'action_server' global multiplier.

## 5. Dynamic Market Commerce
Reconstructed from GetMarket logic (Lines 50000-50500).

### 5.1 Character Stalls
* **Capacity**: Characters rent 1 stall at a time (pPalatka check).
* **Fee**: /hour siphoned to the State Treasury.
* **Inventory**: Async queries fetch up to 5 character-specific items from the 'market' table.

## 6. Blackmarket & Priton Retail
* **Priton Price Index**: mafia_narko_price fluctuates between - based on Mafia leader input.
* **Article Technicals**: black_prods[0..9] tracks global illicit stock for Gang armories and drug labs.

## 5. Dynamic Market Commerce
Reconstructed from GetMarket logic (Lines 50000-50500).

### 5.1 Character Stalls
* **Capacity**: Characters rent 1 stall at a time (pPalatka check).
* **Fee**: /hour siphoned to the State Treasury.
* **Inventory**: Async queries fetch up to 5 character-specific items from the 'market' table.

## 6. Blackmarket & Priton Retail
* **Priton Price Index**: mafia_narko_price fluctuates between - based on Mafia leader input.
* **Article Technicals**: black_prods[0..9] tracks global illicit stock for Gang armories and drug labs.

## 4. Player Market Stalls (D_MARKETS)
Reconstructed from lines 17500-18000.

### 4.1 Logistic Hub
* **Renting**: Stalls cost /hour (Max 4 hours).
* **Automation**: Stalls persist if the owner is online. Other players interact with the stall to buy listed goods.
* **Inventory**: 5 slots per character. Restricted to legal harvested items (Apples, Eggs, Fish).

## 5. Exhaustive Article Management
Reconstructed from dBManageArticlesList logic (Lines 30500-31500).

### 5.1 Pricing Strategy
* **Retail Floor**: Owners set prices between  and ,000 per unit.
* **Article Status**: Tracks current QTY vs Max Capacity. Items with 0 stock are automatically disabled in the shop GUI.

### 5.2 Supply Chain Customization
* **Order Pricing**: Owners set the per-unit payment for Truckers ( to ). Higher payments prioritize the order in the global /prods list.
* **Ordering**: Owners select specific sub-items (e.g., 'Worms' vs 'Rods' in Fishing shops) to restock individual article slots.
