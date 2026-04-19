#if defined CHILIAD_BANKING
	#endinput
#endif
#define CHILIAD_BANKING

#include "source/systems/banking/data.inc"
#include "source/systems/banking/database.inc"

forward bool:Banking_IsValidPin(const pin[]);
forward Banking_OpenCardFromItem(playerid, E_ITEM:itemid);
#include "source/systems/banking/dialogs.inc"
#include "source/systems/banking/callbacks.inc"
#include "source/systems/banking/commands.inc"
#include "source/systems/banking/hooks.inc"

Banking_Init()
{
	BankingDB_EnsureTables();
	return 1;
}

bool:Banking_IsValidPin(const pin[])
{
	if (strlen(pin) != BANKING_PIN_LENGTH)
	{
		return false;
	}

	for (new i = 0; i < BANKING_PIN_LENGTH; i++)
	{
		if (pin[i] < '0' || pin[i] > '9')
		{
			return false;
		}
	}

	return true;
}

Banking_Open(playerid, bool:from_item = false)
{
	if (!Inventory_RequireLoaded(playerid))
	{
		return 1;
	}

	BankingOpenedFromItem[playerid] = from_item;
	BankingDB_LoadCards(playerid);
	return 1;
}

Banking_SelectCard(playerid, card_id, balance)
{
	BankingSelectedCardID[playerid] = card_id;
	BankingSelectedCardBalance[playerid] = balance;
	Banking_ShowPinDialog(playerid);
	return 1;
}

Banking_OpenCardFromItem(playerid, E_ITEM:itemid)
{
	if (itemid != BANK_CARD)
	{
		SendError(playerid, "Invalid bank card.");
		return 1;
	}

	return Banking_Open(playerid, true);
}

Banking_RefreshSelectedCard(playerid)
{
	BankingDB_LoadSelectedCard(playerid);
	return 1;
}
