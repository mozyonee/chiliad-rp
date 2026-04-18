#if defined CHILIAD_BANKING
	#endinput
#endif
#define CHILIAD_BANKING

#include "source/systems/banking/banking_data.inc"
#include "source/systems/banking/banking_db.inc"

forward bool:Banking_IsValidPin(const pin[]);
forward Banking_OpenCardFromItem(playerid, itemid);
#include "source/systems/banking/banking_dialogs.inc"
#include "source/systems/banking/banking_callbacks.inc"
#include "source/systems/banking/banking_cmds.inc"
#include "source/systems/banking/banking_hooks.inc"

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
	if (!General_RequireCharacter(playerid))
	{
		return 1;
	}

	if (!Inventory_IsLoaded(playerid))
	{
		SendError(playerid, "Inventory is not loaded yet.");
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

Banking_OpenCardFromItem(playerid, itemid)
{
	if (itemid != ITEM_BANK_CARD)
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
