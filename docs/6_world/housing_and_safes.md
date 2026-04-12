# World: Housing & Modular Interiors
Reconstructed from hinterior_info array (Lines 2700-2800).
* **Interiors**: 42 unique layouts.
* **Attributes**: Each interior defines exit/spawn coords and h_evict (tenant capacity 0-3).
* **Upgrades**: D_HOUSE_BUYBASEMENT adds a persistent Virtual World basement.
* **Storage**: dSafe handles cash/drug persistence with a 4-digit PinCode.

## 3. Real Estate Agency (D_RIELTOR)
Reconstructed from lines 34500-35500.

### 3.1 Advanced Search
* **Pagination**: Lists 30 available houses or 20 businesses per page.
* **Filtering**: Automatically excludes owned properties ('houseOwner > 0').

### 3.2 Inspection Mechanic
* **Fee**: Calculated as gBusiness[id][bPrice] * 150. 
* **Camera Control**: Triggers SetPlayerCameraPos and SetPlayerCameraLookAt to orbit the target property.
* **Coordinates**: Position saved to 'rielX/Y/Z' PVars to allow the player to return to the agency desk after inspection.

## 4. Residential Security: The Safe System
Reconstructed from dSafe logic (Lines 61000-61500).

### 4.1 Safe Infrastructure
* **Object**: Interior-based safe object with persistent MySQL data.
* **Security**: Requires a character-defined 4-digit PIN.
* **Storage**: 
  - **Cash (pCashSafe)**: Unlimited physical money storage.
  - **Drugs (pDrugsSafe)**: High-capacity contraband storage isolated from the character inventory.

### 4.2 Safe Interactions
* **Actions**: Put Money, Take Money, Put Drugs, Take Drugs.
* **Audit**: Large withdrawals are logged to the 'safe_logs' table.

## 5. Automated Asset Seizure (Tax Defaults)
Reconstructed from pay_realty technicals (Lines 66500-67500).

Every midnight, the server performs a global audit of character property taxes:
* **Eviction**: If 'houseDay' <= currentTime, the character is evicted. 
* **Buyback**: Server automatically issues a 50% refund of the asset value to the character's 'pBank'.
* **Fleet Cleanup**: Automatically destroys all 'house_car' instances and resets parking coordinates to default city hubs.
* **Business Seizure**: Unowned businesses reset to 'Status 1' (Closed) and article prices revert to default ().
