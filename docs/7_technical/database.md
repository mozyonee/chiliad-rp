# Database Table Mapping
Reconstructed from defines (Lines 400-500).
* **accounts**: OOC account data.
* **characters**: Persistent character profiles.
* **admins**: Permission levels and audit logs.
* **factions**: Organization state and banks.
* **business**: Retail and article logistics.
* **houses**: Property ownership.
* **gangzone**: Territory control.
* **cars**: Player vehicle persistence.
* **house_car**: Mobile home (DNK) interiors.
* **promocode**: Influencer rewards system.

## 4. Name-String Integrity Engine (ChangeName)
Reconstructed from lines 57000-57500.

Changing a character's RP name triggers a mandatory cascading update across 15+ tables to prevent data orphaned state:
* **Core**: 'characters' (Name), 'accounts' (pFriend referral link).
* **Assets**: 'houses' (owner), 'cars' (owner), 'business' (owner), 'billboards' (bOwner).
* **Records**: 'questsprogress', 'fractions_blacklist', 'promocode', 'admins'.
* **Logs**: 'logs' (Name and Value columns).
* **Technical**: Triggers a global client message broadcast and a 'SetPlayerName' update.

## 5. Global Name-Change Integrity Engine
Reconstructed from ChangeName stock (Lines 68500-69500).

To prevent data fragmentation, the server executes a multi-table SQL update when a character is renamed:
* **Assets**: Updates 'owner' in houses, cars, business, and apartments.
* **Identity**: Updates 'cOwner' in characters and 'pName' in accounts.
* **Financials**: Updates 'Sender'/'Recipient' in bank_logs and phone_messages.
* **Records**: Updates 'Name' in questsprogress and factions_blacklist.

# Technical: Exhaustive Database Schema (Code-Derived)

This schema is reconstructed line-by-line from SQL operations across the entire monolithic script and associated modules. It identifies 40+ unique tables required for the server's persistent state.

## 1. Identity & Character Layers

### Table: `accounts` (OOC Layer)
*   `pID`, `pName`, `pPassword`, `pKey`, `pEmail`, `rank`, `pGoogleCode`, `pGoogleSec`, `pGenGoogle`, `pDiscord`, `pDiscordName`, `pTelegram`, `pFriend`, `pRegDate`, `pRegIP`, `pLastIP`, `pCharactersLimit`, `pQuestHacker`, `pHacker`, `pHackProg`.

### Table: `characters` (IC Layer)
*   `cID`, `cOwner`, `Name`, `cSex`, `cAge`, `cEthnos`, `cPame`, `cSkin`, `cLastSpawn`, `cExitPos`, `cRadioChannel`, `cRadioSlot`, `pvIp`, `cJail`, `cJailTime`, `pArrested`, `pVictim`, `cWanted`, `cWantedReason`, `pCrimes`, `pZakonp`, `pLevel`, `pHP`, `cStage`, `cDeathX..A`, `cDeathVW`, `cDeathTimerSec`, `pAdmin`, `youtube`, `bussiness`, `apart`, `house`, `tempkey`, `room`, `plane`, `mute`, `pExp`, `pCash`, `pDrugs`, `pMats`, `pLeader`, `pMember`, `pRank`, `pJob`, `pFracSkin`, `pPhone`, `licenses`, `pAddiction`, `pMarried`, `pDrug`, `pBank`, `pMobile`, `pWeapons`, `pAmmos`, `pGunSkills`, `pOnline`, `pWarns`, `warntime`, `pEmail`, `pPlayTime_one/two`, `kill_capture`, `pHospital`, `pRod`, `pRopes`, `pWorms`, `pFish`, `family`, `progress`, `spawn`, `salary`, `book`, `watch`, `phonenumber`, `phonename`, `MedCard`, `Advert`, `FracDuty`, `Settings`, `online_status`, `GoogleCode`, `SecretCode`, `pBlago`, `donatemoney`, `fwarn`, `pSatiety`, `pKills`, `pWinArea`, `pFamRank`, `pBox`, `pSnow`, `pAdmMSG`, `pAdmKL`, `pGoogle`, `homesell`, `bizzsell`, `airsell`, `roomsell`, `pLottery`, `GunLic`, `drunginv`, `pSlotItem`, `pSlotItem_Use`, `fraction_date`, `fmute`, `theftSkill`, `theftExp`, `theftTime`, `pDonateBank`, `pFight_on/off`, `MedHeal`, `walk`, `job_skill`, `premiumtime`, `premium`, `thrist`, `Item`, `ItemAmount`, `acs_job`, `pMPromo`, `activ`, `casino_chips`, `casino_lang`, `dm_k/d`, `lomka`, `case_1/2/3`, `talon_fam`, `bizz_work/status/cash/lcash`, `zahvat`, `metal`, `cloth`, `dress`, `stone`, `spawnData`, `spawnTPPick`, `event`, `e_kills`, `procent`, `pPrefix_s/i`, `pCredit`, `pCreditDay`, `pKeyCar`, `pBoost`, `pMag`, `pRope`, `ahMenu0..3`, `Akum`, `pDiscord`, `pDiscordName`, `pTelegram`, `TLicCar/Air/Boat/Weapon`, `pDeposit`, `pDepositMoney`, `pDepositTime`.

## 2. Organization & Faction Logistics

### Table: `factions`
*   `ID`, `Type`, `Name`, `Color`, `MapIcon`, `Spawn`, `Radio`, `lRank`, `sRank`, `Leader`, `Bank`, `StorageItem`, `StorageAmount`.

### Table: `faction_fleets`
*   `ID`, `fID`, `Faction`, `Model`, `Color1`, `Color2`, `Siren`, `SpawnX..A`, `SpawnVW`, `SpawnI`.

### Table: `faction_ranks`
*   `ID`, `fID`, `Faction`, `Name`, `Salary`.

### Table: `faction_skins`
*   `ID`, `fID`, `Faction`, `Skin`.

### Table: `frac_weapon` (Armory Slots)
*   `fwID`, `Slot`, `Fraction`, `fwName`, `fwGunID`, `fwGunAmmo`, `fwArmor`, `fwRank`.

### Table: `fractions_blacklist`
*   `bl_id`, `bl_fraction`, `bl_name`, `bl_reason`, `bl_date`.

## 3. Economy & Real Estate

### Table: `business`
*   `id`, `name`, `type`, `bint`, `ownerid`, `sellprice`, `bank`, `price`, `enter`, `product`, `visitors`, `upgrade`, `order`, `orderprice`, `status`, `x..r`, `deliving`, `mafia`, `owner`, `bankday`.

### Table: `business_articles`
*   `ID`, `Business`, `Article`, `Price`, `Amount`, `Maximum`, `Order`.

### Table: `business_places` (Property for Rent)
*   `ID`, `Type`, `X..Z`, `Status`, `Price`, `Rent`, `OwnerID`, `Min/MaxRentPrice`, `PlaceType`.

### Table: `houses`
*   `id`, `ownerid`, `price`, `class`, `garage`, `basement`, `hint`, `close`, `day`, `x..r`, `parkx..r`, `peopleid1..3`, `people1..3`, `family`, `safe_cash`, `safe_drugs`, `safe_pin`.

### Table: `cars` (Player Assets)
*   `id`, `owner`, `model`, `color_one/two`, `drived`, `fuel`, `components`, `kanistra`, `narko`, `mats`, `deagle`, `ak47`, `m4`, `shot`, `number`, `paintjob`, `Akum`.

## 4. Interaction & Communication

### Table: `phone_contacts`
*   `cID` (Owner), `Contact` (Name), `Number`, `IsFavorite`.

### Table: `phone_messages`
*   `Sender`, `Recipient`, `Message`, `time`, `read`.

### Table: `phone_settings`
*   `ID`, `OwnerID`, `Status`, `DesktopColor`, `Ringtone`.

### Table: `market` (Stalls)
*   `id`, `Name`, `item`, `ammout`, `cash`.

## 5. Jobs & Progression

### Table: `bus_routes`
*   `ID`, `RouteID`, `r_pos` (Serialized), `IsStop`, `StopPosObject`, `StopPosName`.

### Table: `questsprogress`
*   `idquest`, `progress`, `accept`, `name`, `day`, `hallow`.

### Table: `hacker_stats`
*   `ID` (Character), `text` (Action Log), `date`.

## 6. Audit & System

### Table: `logs` (Global)
*   `ID`, `Date`, `Action`, `Name`, `Value`.

### Table: `online_player` (Audit)
*   `id`, `accountid`, `date`, `online_sec`, `afk_sec`.

### Table: `others` (Global State)
*   `bonus_payday`, `gun_mats`, `bonus_donate`, `bonus_skills`, `casino`, `woodsklad`, `tk_unloading_0..3`, `invite_frac0..7`, `bandidos_benz`, `angels_benz`.

### Table: `Settings` (Server Overrides)
*   `ServerName`, `ServerPassword`, `DonateX`, `PayDayX`.
