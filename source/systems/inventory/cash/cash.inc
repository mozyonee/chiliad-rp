#if defined CHILIAD_INVENTORY_CASH
	#endinput
#endif
#define CHILIAD_INVENTORY_CASH

InventoryCash_SyncDisplay(playerid)
{
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, Money_Get(playerid));
	return 1;
}

stock Money_Get(playerid)
{
	return Inventory_GetAmount(playerid, ITEM_CASH);
}

stock bool:Money_Has(playerid, amount)
{
	return Inventory_Has(playerid, ITEM_CASH, amount);
}

stock bool:Money_Set(playerid, amount)
{
	return Inventory_Set(playerid, ITEM_CASH, amount);
}

stock bool:Money_Give(playerid, amount)
{
	return Inventory_Add(playerid, ITEM_CASH, amount);
}

stock bool:Money_Take(playerid, amount)
{
	return Inventory_Remove(playerid, ITEM_CASH, amount);
}

CMD:pay(playerid, params[])
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

	new targetid, amount;
	if (sscanf(params, "ui", targetid, amount))
	{
		SendError(playerid, "Usage: /pay [player] [amount]");
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid))
	{
		SendError(playerid, "Player not found.");
		return 1;
	}

	if (targetid == playerid)
	{
		SendError(playerid, "You cannot pay yourself.");
		return 1;
	}

	if (!Character_IsLoaded(targetid) || !Inventory_IsLoaded(targetid))
	{
		SendError(playerid, "That player has not loaded a character yet.");
		return 1;
	}

	if (amount <= 0)
	{
		SendError(playerid, "Amount must be greater than zero.");
		return 1;
	}

	if (!Money_Has(playerid, amount))
	{
		SendError(playerid, "You do not have enough cash.");
		return 1;
	}

	new sender[MAX_PLAYER_NAME + 1], receiver[MAX_PLAYER_NAME + 1], message[144];
	General_GetDisplayName(playerid, sender, sizeof(sender));
	General_GetDisplayName(targetid, receiver, sizeof(receiver));

	Inventory_Transfer(playerid, targetid, ITEM_CASH, amount);

	format(message, sizeof(message), "You paid %s $%d.", receiver, amount);
	SendOK(playerid, message);

	format(message, sizeof(message), "%s paid you $%d.", sender, amount);
	SendOK(targetid, message);
	return 1;
}

alias:statistics("stats")
CMD:statistics(playerid)
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

	new name[MAX_PLAYER_NAME + 1], content[160];
	General_GetDisplayName(playerid, name, sizeof(name));
	format(content, sizeof(content), W"Name: "P"%s\n"W"Cash: "GREEN"$%d", name, Money_Get(playerid));

	SPD(playerid, DIALOG_INVENTORY_STATISTICS, DSM,
		DIALOG_TITLE("Statistics"),
		content,
		DIALOG_BUTTON_CLOSE,
		""
	);
	return 1;
}
