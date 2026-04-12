## 3. City Bank: Credit & Loans (D_CREDIT_BUY)
Reconstructed from lines 19000-19500.

### 3.1 Eligibility & Tiers
* **Level 5-9**: Maximum loan ,000.
* **Level 10+**: Maximum loan ,000,000.

### 3.2 Repayment Durations
* **1 Day**: Base interest (Set by Gov).
* **3 Days**: Base + 2% surcharge.
* **5 Days**: Base + 3% surcharge.
* **7 Days**: Base + 5% surcharge.

### 3.3 Default Penalties
* If funds are insufficient on expiry, the server deducts 100% of all future character revenue (Job pay, PayDay salary) until the debt is cleared.

## 4. Debt & Credit Siphoning
Reconstructed from 'hour_timer' and credit logic (Lines 23500-24000).

### 4.1 Automated Repayment
* **Priority**: Debt repayment ('pCredit') is deducted before Salary or Business profits reach 'pBank'.
* **Defaults**: Characters with negative 'pBank' balances are blocked from 'Asset Trading' (Cars/Houses) until the balance is neutralized.

### 4.2 High-Yield Savings (Deposit)
* **Duration**: Funds are locked for 2 Paydays ('pDepositTime') after any interaction.
* **Multiplier**: VIP status influences the percentage yield added to 'pDepositMoney' hourly.

## 5. State Treasury Fiscal Siphoning
Reconstructed from PayDay and hour_timer logic (Lines 63500-64000).

### 5.1 Automated Deductions
During the hourly heartbeat, the server performs three mandatory siphons before character revenue is granted:
1. **Asset Tax**: House and Business rent based on 'nalog_1' and 'nalog_2' multipliers.
2. **Credit Repayment**: If 'pCredit' > 0, the server deducts 100% of the PayDay salary until the debt is settled.
3. **Treasury Deposit**: All taxes and fine revenue are committed to the 'blago' column in the 'others' table via 'mysql_format'.

## 6. Traffic Fines & Ticket Persistence
Reconstructed from bank_tickets technicals (Lines 69500-70000).

### 6.1 Data Schema
* **Source Table**: 'bank_tickets' stores id, give_name (Officer), total (Fine), and reason.
* **Interface**: Characters use 'D_BANK_TICKETS' at any bank to view historical infractions.
* **Side-Effect**: Unpaid tickets are automatically flagged in the Police MDC (/mdc) citizen search.

## 3. P2P House Sales Logic
Reconstructed from lines 28500-29000.

### 3.1 Trade Handshake
* **Logic**: Uses PVar 'houseSeller' and 'houseBuyer' to link two sessions. 
* **Validation**: Seller must have 0 outstanding credit. Buyer must be within 5.0m of the house door.
* **Asset Transfer**: Automatically destroys the seller's 'house_car' instances and clears the 'Arendator' (tenant) list.

### 3.2 Financials
* **Government Sellback**: Returns 80% of housePrice to character. 
* **Commission**: 5% of P2P sales is siphoned to the Government Bank.

## 4. P2P Vehicle Swapping (/changecar)
Reconstructed from lines 41500-42000.

### 4.1 Commerce Flow
1. **Validation**: Both players must be inside their respective vehicles and within 5.0m.
2. **Inspection**: Displays a detailed comparison dialog showing:
  - Model and Mileage (carDrived).
  - Installed Improvements (12 tuning categories).
  - Fuel and Battery status.
3. **Surcharge**: Supports manual cash adjustment ( to ,000,000).
4. **Handshake**: Buyer confirms via 'Y' key, triggering a double-MySQL update.
