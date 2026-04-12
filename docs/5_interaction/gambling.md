# Interaction: Gambling & Odds
Reconstructed from Lines 600-800.
### 1. Sports Betting (Odds)
* **Capacity**: 150 bets across 30 pages.
* **Data**: Tracks Teams, Event Date, and Home/Away/Draw float odds.
### 2. Dice System
* **Capacity**: 4 high-stakes tables.
* **Sync**: Global TextDraw updates for all nearby players.

## 3. Sports Betting Interface (OddsPlayer)
Reconstructed from lines 12000-13500.

### 3.1 Data Layout
* **Matches**: 96 individual TextDraw elements manage match listings.
* **Attributes**: Displays League Name, Teams (1 vs 2), Odds (Home/Away/Draw), and Event Date.

### 3.2 Navigation Hub
* **Pagination**: Buttons 95 (<<) and 96 (>>) handle match cycling.
* **Interaction**: Buttons 14, 15, and 16 act as 'Quick Bet' selectors for Home, Draw, and Away outcomes.

## 4. High-Stakes Bank Hacking (/bankhack)
Reconstructed from lines 40500-41000.

### 4.1 Requirements
* **Logistics**: Proximity to City Bank vault. 
* **Teamwork**: Minimum 3 organization members must be within 8.0m of the hacker.
* **Cooldown**: Global 72-hour lockout (bank_vzlom[3]) after a successful breach.

### 4.2 The Hacking Mini-game
* **Visual**: Specialized TextDraw interface showing a randomized sequence of numbers.
* **Interaction**: Player must select the 'ExpectedSelectionTD' within a shrinking time window.
* **Success**: Triggers 'progress_rob' increment. If 100%, the vault opens and alerts all State factions.

## 5. Blackjack Technical Engine (black_jack.inc)

### 5.1 Game State Machine
* **STATUS_NONE**: Table reset and round initialization.
* **STATUS_STARTING**: 15-second betting window. Unlocks 'MIN/MAX' UI options.
* **STATUS_STARTED**: Dealer shuffles deck (52 cards) and deals initial hands.
* **STATUS_ENDING**: round results processed; payouts issued to 'pCasinoChips'.

### 5.2 Dealer AI (Actor ID 5)
* **Hard Rules**: Dealer must 'HIT' if score <= 16 and 'STAY' if score >= 17.
* **Hidden Logic**: Dealer's second card ('blackjackTableDealerHidden') is only revealed after all players 'STAY' or 'BUST'.
* **Multi-Hand**: Supports 'Split' logic, creating a second independent Hand ID for the player.

### 5.3 Interactive Tutorial Engine
* **Steps**: 21 discrete pedagogical stages guiding the player from basic scoring to advanced Split/Double strategies.
* **Simulation**: Uses a private Virtual World to simulate a scripted round with fixed card outcomes (e.g., Stage 12 deals an 8 and 8 to force a Split prompt).

## 6. Premium Case Engine (roulette.inc)

### 6.1 The Roulette Reel
* **Mechanic**: 5-slot visual reel implemented via PlayerTextDraws. Uses Model Previews for prize types.
* **Cost**: Hardcoded at 150 UAH (pDonate) per opening.
* **Animation**: 'roulette_DealTimer' executes between 40-50 cycles with dynamic deceleration to simulate a mechanical reel.

### 6.2 Prize Tier Matrix
Reconstructed from PrizeRouletInfo (50+ entries):
* **Currency**: Money ( to ), Donate (30 to 1000 UAH).
* **Progression**: EXP (+1 to +5), Level Boosts (+1 to +2).
* **Status**: VIP Premium (1 to 30 days), X2 Salary Boosts (1 to 24 hours).
* **Rare Assets**: Skins (ID 177, 249, 294), Accessories (Magnet, Katana, Dreadlocks).

### 6.3 Asset Claim Logic (D_ROULETTE_3)
Winners have two mutually exclusive paths for every prize:
1. **Use**: Instantly applies the bonus (Level/Exp) or moves the item (Skin/Accessory) to character inventory.
2. **Sell**: Converts the prize into cash or a percentage of its Donate value (e.g., Katana sells for ,000).
* **Persistence**: Unclaimed prizes are stored in the 'roulette_prizes' table until manually resolved.
