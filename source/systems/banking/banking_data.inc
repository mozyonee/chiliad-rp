#if defined CHILIAD_BANKING_DATA
	#endinput
#endif
#define CHILIAD_BANKING_DATA

#define BANKING_MAX_CARDS (10)
#define BANKING_PIN_LENGTH (4)

enum E_BANKING_CARD_LIST_DATA
{
	BankCardID,
	BankCardBalance
}

new BankingCards[MAX_PLAYERS][BANKING_MAX_CARDS][E_BANKING_CARD_LIST_DATA];
new BankingCardCount[MAX_PLAYERS];
new BankingSelectedCardID[MAX_PLAYERS];
new BankingSelectedCardBalance[MAX_PLAYERS];
new bool:BankingOpenedFromItem[MAX_PLAYERS];
