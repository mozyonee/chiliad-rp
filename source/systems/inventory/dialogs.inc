#if defined CHILIAD_INVENTORY_DIALOGS
	#endinput
#endif
#define CHILIAD_INVENTORY_DIALOGS

Inventory_ShowList(playerid)
{
	if (!Inventory_IsLoaded(playerid))
	{
		SendError(playerid, "Inventory is not loaded yet.");
		return 1;
	}

	new content[2048], row[96], name[ITEM_NAME_LENGTH];
	InventoryDialogItemCount[playerid] = 0;

	format(content, sizeof(content), "Item\tAmount\n");

	for (new i = 0; i < INVENTORY_MAX_CACHE_ITEMS && InventoryDialogItemCount[playerid] < INVENTORY_MAX_DIALOG_ITEMS; i++)
	{
		if (InventoryData[playerid][i][InventoryItemID] == INVALID_ITEM_ID || InventoryData[playerid][i][InventoryAmount] <= 0)
		{
			continue;
		}

		Inventory_GetItemName(InventoryData[playerid][i][InventoryItemID], name, sizeof(name));
		format(row, sizeof(row), W"%s\t"P"%d\n", name, InventoryData[playerid][i][InventoryAmount]);
		strcat(content, row, sizeof(content));

		InventoryDialogItems[playerid][InventoryDialogItemCount[playerid]] = InventoryData[playerid][i][InventoryItemID];
		InventoryDialogItemCount[playerid]++;
	}

	if (!InventoryDialogItemCount[playerid])
	{
		strcat(content, G"Inventory is empty.\t-\n", sizeof(content));
	}

	SPD(playerid, DIALOG_INVENTORY_LIST, DSTH,
		DIALOG_TITLE("Inventory"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CANCEL
	);
	return 1;
}

Inventory_ShowItemOptions(playerid, E_ITEM:itemid)
{
	new title[64], content[96], name[ITEM_NAME_LENGTH];
	InventorySelectedItem[playerid] = itemid;
	Inventory_GetItemName(itemid, name, sizeof(name));

	format(title, sizeof(title), P"|"W" %s", name);

	format(content, sizeof(content), P"1."W" Use\n"P"2."W" Give\n"P"3."W" Throw");

	SPD(playerid, DIALOG_INVENTORY_ITEM, DSL,
		title,
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Inventory_ShowGiveDialog(playerid)
{
	new name[ITEM_NAME_LENGTH], content[192];
	Inventory_GetItemName(InventorySelectedItem[playerid], name, sizeof(name));

	format(content, sizeof(content), W"Item: "P"%s\n"W"Amount owned: "P"%d\n\n"W"Enter player and amount.",
		name,
		Inventory_GetAmount(playerid, InventorySelectedItem[playerid])
	);

	SPD(playerid, DIALOG_INVENTORY_GIVE, DSI,
		DIALOG_TITLE("Give Item"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Inventory_ShowThrowDialog(playerid)
{
	new name[ITEM_NAME_LENGTH], content[192];
	Inventory_GetItemName(InventorySelectedItem[playerid], name, sizeof(name));

	format(content, sizeof(content), W"Item: "P"%s\n"W"Amount owned: "P"%d\n\n"W"Enter amount to throw away.",
		name,
		Inventory_GetAmount(playerid, InventorySelectedItem[playerid])
	);

	SPD(playerid, DIALOG_INVENTORY_THROW, DSI,
		DIALOG_TITLE("Throw Item"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Inventory_HandleListDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	if (listitem < 0 || listitem >= InventoryDialogItemCount[playerid])
	{
		return 1;
	}

	return Inventory_ShowItemOptions(playerid, InventoryDialogItems[playerid][listitem]);
}

Inventory_HandleItemDialog(playerid, response, listitem)
{
	if (!response)
	{
		return Inventory_ShowList(playerid);
	}

	if (!Inventory_Has(playerid, InventorySelectedItem[playerid], 1))
	{
		SendError(playerid, "You no longer have this item.");
		return 1;
	}

	switch (listitem)
	{
		case 0:
		{
			Inventory_Use(playerid, InventorySelectedItem[playerid]);
		}
		case 1:
		{
			Inventory_ShowGiveDialog(playerid);
		}
		case 2:
		{
			Inventory_ShowThrowDialog(playerid);
		}
	}

	return 1;
}

Inventory_HandleGiveDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		return Inventory_ShowItemOptions(playerid, InventorySelectedItem[playerid]);
	}

	new targetid, amount;
	if (sscanf(inputtext, "ui", targetid, amount))
	{
		SendError(playerid, "Use: [player] [amount]");
		Inventory_ShowGiveDialog(playerid);
		return 1;
	}

	if (targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid))
	{
		SendError(playerid, "Player not found.");
		Inventory_ShowGiveDialog(playerid);
		return 1;
	}

	if (targetid == playerid)
	{
		SendError(playerid, "You cannot give items to yourself.");
		Inventory_ShowGiveDialog(playerid);
		return 1;
	}

	if (!Character_IsLoaded(targetid) || !Inventory_IsLoaded(targetid))
	{
		SendError(playerid, "That player has not loaded a character yet.");
		Inventory_ShowGiveDialog(playerid);
		return 1;
	}

	if (amount <= 0 || !Inventory_Has(playerid, InventorySelectedItem[playerid], amount))
	{
		SendError(playerid, "Invalid amount.");
		Inventory_ShowGiveDialog(playerid);
		return 1;
	}

	new itemname[ITEM_NAME_LENGTH], sender[MAX_PLAYER_NAME + 1], receiver[MAX_PLAYER_NAME + 1], message[144];
	Inventory_GetItemName(InventorySelectedItem[playerid], itemname, sizeof(itemname));
	General_GetDisplayName(playerid, sender, sizeof(sender));
	General_GetDisplayName(targetid, receiver, sizeof(receiver));

	if (!Inventory_Transfer(playerid, targetid, InventorySelectedItem[playerid], amount))
	{
		SendError(playerid, "Could not give item.");
		return 1;
	}

	format(message, sizeof(message), "You gave %s %d x %s.", receiver, amount, itemname);
	SendSuccess(playerid, message);

	format(message, sizeof(message), "%s gave you %d x %s.", sender, amount, itemname);
	SendSuccess(targetid, message);
	return 1;
}

Inventory_HandleThrowDialog(playerid, response, const inputtext[])
{
	if (!response)
	{
		return Inventory_ShowItemOptions(playerid, InventorySelectedItem[playerid]);
	}

	new amount;
	if (sscanf(inputtext, "i", amount))
	{
		SendError(playerid, "Use: [amount]");
		Inventory_ShowThrowDialog(playerid);
		return 1;
	}

	if (amount <= 0 || !Inventory_Has(playerid, InventorySelectedItem[playerid], amount))
	{
		SendError(playerid, "Invalid amount.");
		Inventory_ShowThrowDialog(playerid);
		return 1;
	}

	new itemname[ITEM_NAME_LENGTH], message[96];
	Inventory_GetItemName(InventorySelectedItem[playerid], itemname, sizeof(itemname));
	Inventory_Throw(playerid, InventorySelectedItem[playerid], amount);

	format(message, sizeof(message), "You threw away %d x %s.", amount, itemname);
	SendSuccess(playerid, message);
	return 1;
}
