#if defined CHILIAD_BUSINESSES_DIALOGS
	#endinput
#endif
#define CHILIAD_BUSINESSES_DIALOGS

Business_ShowList(playerid)
{
	new content[1024], row[128], lock_status[16];
	BusinessDialogItemCount[playerid] = 0;

	format(content, sizeof(content), "ID\tBusiness\tBalance\tLock\n");

	for (new i = 0; i < BusinessCount; i++)
	{
		if (!Business_IsOwner(playerid, i))
		{
			continue;
		}

		format(lock_status, sizeof(lock_status), "%s", BusinessData[i][Locked] ? ("Locked") : ("Unlocked"));
		format(row, sizeof(row), P"%d\t"W"%s\t"GREEN"$%d\t"W"%s\n",
			BusinessData[i][ID],
			BusinessData[i][Name],
			BusinessData[i][Balance],
			lock_status);
		strcat(content, row, sizeof(content));

		BusinessDialogItems[playerid][BusinessDialogItemCount[playerid]] = i;
		BusinessDialogItemCount[playerid]++;
	}

	if (!BusinessDialogItemCount[playerid])
	{
		strcat(content, G"No businesses.\n", sizeof(content));
	}

	SPD(playerid, DIALOG_BUSINESS_LIST, DSTH,
		DIALOG_TITLE("Businesses"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CLOSE
	);
	return 1;
}

Business_ShowMenu(playerid, id)
{
	if (!Business_IsOwner(playerid, id))
	{
		return Business_ShowList(playerid);
	}

	new title[80], content[160];
	BusinessCurrentID[playerid] = id;

	format(title, sizeof(title), DIALOG_TITLE("%s"), BusinessData[id][Name]);
	format(content, sizeof(content),
		P"1."W" %s\n"P"2."W" Withdraw balance "GREEN"$%d\n"P"3."W" Restock "P"%d"W"/"P"%d",
		BusinessData[id][Locked] ? ("Unlock") : ("Lock"),
		BusinessData[id][Balance],
		BusinessData[id][Stock],
		BusinessData[id][MaxStock]);

	SPD(playerid, DIALOG_BUSINESS_MENU, DSL,
		title,
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Business_ShowShop(playerid, id)
{
	if (!Business_IsValidIndex(id))
	{
		return 0;
	}

	new content[512], name[32], price;
	BusinessCurrentID[playerid] = id;
	BusinessShopItemCount[playerid] = 0;

	format(content, sizeof(content), "Item\tPrice\n");

	switch (BusinessData[id][Type])
	{
		case TYPE_GROCERIES:
		{
			Business_AddShopItem(playerid, WATER, 10);
			Business_AddShopItem(playerid, CHIPS, 15);
			Business_AddShopItem(playerid, SANDWICH, 25);
			Business_AddShopItem(playerid, CIGARETTES, 50);
			Business_AddShopItem(playerid, LIGHTER, 10);
		}
		case TYPE_ELECTRONICS:
		{
			Business_AddShopItem(playerid, PHONE, 450);
			Business_AddShopItem(playerid, WATCH, 150);
			Business_AddShopItem(playerid, RADIO, 100);
			Business_AddShopItem(playerid, CAMERA, 250);
		}
		case TYPE_AMMO:
		{
			Business_AddShopItem(playerid, ARMOUR, 500);
		}
	}

	if (!BusinessShopItemCount[playerid])
	{
		strcat(content, G"No items available.\n", sizeof(content));
	}

	for (new i = 0; i < BusinessShopItemCount[playerid]; i++)
	{
		new E_ITEM:itemid = BusinessShopItems[playerid][i];
		Inventory_GetItemName(itemid, name, sizeof(name));
		price = BusinessShopPrices[playerid][i];
		
		new row[64];
		format(row, sizeof(row), W"%s\t"GREEN"$%d\n", name, price);
		strcat(content, row, sizeof(content));
	}

	SPD(playerid, DIALOG_BUSINESS_SHOP, DSTH, BusinessData[id][Name], content, "Buy", "Exit");
	return 1;
}

Business_AddShopItem(playerid, E_ITEM:itemid, default_price)
{
	new count = BusinessShopItemCount[playerid];
	if (count >= BUSINESS_MAX_SHOP_ITEMS) return 0;
	
	BusinessShopItems[playerid][count] = itemid;
	BusinessShopPrices[playerid][count] = default_price;
	BusinessShopItemCount[playerid]++;
	return 1;
}

Business_HandleShopDialog(playerid, response, listitem)
{
	if (!response)
	{
		BusinessCurrentID[playerid] = -1;
		return 1;
	}

	new id = BusinessCurrentID[playerid];
	if (id == -1 || listitem < 0 || listitem >= BusinessShopItemCount[playerid])
	{
		return 1;
	}

	new E_ITEM:itemid = BusinessShopItems[playerid][listitem];
	new price = BusinessShopPrices[playerid][listitem];

	if (Money_Get(playerid) < price)
	{
		SendError(playerid, "You do not have enough cash.");
		return Business_ShowShop(playerid, id);
	}

	if (BusinessData[id][Stock] <= 0)
	{
		SendError(playerid, "This item is out of stock.");
		return Business_ShowShop(playerid, id);
	}

	Money_Remove(playerid, price);
	Inventory_Add(playerid, itemid, 1);
	
	BusinessData[id][Balance] += price;
	BusinessData[id][Stock]--;
	
	BusinessDB_UpdateBalance(BusinessData[id][ID], BusinessData[id][Balance]);
	BusinessDB_UpdateStock(BusinessData[id][ID], BusinessData[id][Stock]);

	new name[32], message[128];
	Inventory_GetItemName(itemid, name, sizeof(name));
	format(message, sizeof(message), "You bought a %s for $%d.", name, price);
	SendSuccess(playerid, message);

	return Business_ShowShop(playerid, id);
}

Business_ShowBuyDialog(playerid, id)
{
	if (!Business_IsValidIndex(id)) return 0;

	BusinessCurrentID[playerid] = id;

	new content[256], type_name[32];
	Business_GetTypeName(BusinessData[id][Type], type_name, sizeof(type_name));
	format(content, sizeof(content), W"Business: "P"%s\n"W"Type: "P"%s\n"W"Price: "GREEN"$%d\n\n"W"Are you sure you want to buy this business?",
		BusinessData[id][Name], type_name, BusinessData[id][Price]);

	SPD(playerid, DIALOG_BUSINESS_BUY, DSM, DIALOG_TITLE("Purchase Business"), content, "Buy", "Cancel");
	return 1;
}

Business_HandleListDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	if (listitem < 0 || listitem >= BusinessDialogItemCount[playerid])
	{
		return Business_ShowList(playerid);
	}

	return Business_ShowMenu(playerid, BusinessDialogItems[playerid][listitem]);
}

Business_HandleMenuDialog(playerid, response, listitem)
{
	if (!response)
	{
		return Business_ShowList(playerid);
	}

	new id = BusinessCurrentID[playerid];
	if (!Business_IsOwner(playerid, id))
	{
		return Business_ShowList(playerid);
	}

	switch (listitem)
	{
		case 0:
		{
			BusinessData[id][Locked] = !BusinessData[id][Locked];
			BusinessDB_UpdateLocked(BusinessData[id][ID], BusinessData[id][Locked]);
			Business_Refresh(id);
			SendSuccess(playerid, BusinessData[id][Locked] ? ("Business locked.") : ("Business unlocked."));
			return Business_ShowMenu(playerid, id);
		}
		case 1:
		{
			if (BusinessData[id][Balance] <= 0)
			{
				SendError(playerid, "This business has no money to withdraw.");
				return Business_ShowMenu(playerid, id);
			}

			new amount = BusinessData[id][Balance], message[96];
			BusinessData[id][Balance] = 0;
			BusinessDB_UpdateBalance(BusinessData[id][ID], 0);
			Money_Give(playerid, amount);

			format(message, sizeof(message), "You withdrew $%d from this business.", amount);
			SendSuccess(playerid, message);
			return Business_ShowMenu(playerid, id);
		}
		case 2:
		{
			if (BusinessData[id][Stock] >= BusinessData[id][MaxStock])
			{
				SendError(playerid, "This business is already fully stocked.");
				return Business_ShowMenu(playerid, id);
			}

			BusinessData[id][Stock] = BusinessData[id][MaxStock];
			BusinessDB_UpdateStock(BusinessData[id][ID], BusinessData[id][Stock]);
			SendSuccess(playerid, "Business stock refilled.");
			return Business_ShowMenu(playerid, id);
		}
	}

	return Business_ShowMenu(playerid, id);
}

Business_HandleBuyDialog(playerid, response)
{
	if (!response)
	{
		BusinessCurrentID[playerid] = -1;
		return 1;
	}

	new id = BusinessCurrentID[playerid];
	if (!Business_IsValidIndex(id)) return 1;

	if (BusinessData[id][OwnerID] != 0)
	{
		SendError(playerid, "This business is already owned.");
		return 1;
	}

	if (Money_Get(playerid) < BusinessData[id][Price])
	{
		SendError(playerid, "You do not have enough cash.");
		return 1;
	}

	Money_Remove(playerid, BusinessData[id][Price]);
	BusinessData[id][OwnerID] = Account_GetID(playerid);
	BusinessDB_UpdateOwner(BusinessData[id][ID], BusinessData[id][OwnerID]);
	Business_Refresh(id);

	new message[128];
	format(message, sizeof(message), "You have successfully bought %s for $%d.", BusinessData[id][Name], BusinessData[id][Price]);
	SendSuccess(playerid, message);
	return 1;
}
