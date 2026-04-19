#if defined CHILIAD_BUSINESSES_HOOKS
	#endinput
#endif
#define CHILIAD_BUSINESSES_HOOKS

forward Business_OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys);

public Business_OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys)
{
	if ((newkeys & KEY_WALK) && !(oldkeys & KEY_WALK))
	{
		new id = Business_FindNearbyExterior(playerid);
		if (id != -1)
		{
			return Business_Enter(playerid, id);
		}

		id = Business_FindCurrentInterior(playerid);
		if (id != -1)
		{
			return Business_Exit(playerid, id);
		}
	}

	if ((newkeys & KEY_NO) && !(oldkeys & KEY_NO))
	{
		new id = Business_FindNearbyExterior(playerid);
		if (id != -1 && BusinessData[id][OwnerID] == 0)
		{
			return Business_ShowBuyDialog(playerid, id);
		}
	}

	if ((newkeys & KEY_YES) && !(oldkeys & KEY_YES))
	{
		new id = Business_FindCurrentInterior(playerid, 5.0);
		if (id != -1)
		{
			return Business_ShowShop(playerid, id);
		}
	}

	return 0;
}

Business_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	#pragma unused inputtext

	switch (dialogid)
	{
		case DIALOG_BUSINESS_LIST:
			return Business_HandleListDialog(playerid, response, listitem);

		case DIALOG_BUSINESS_MENU:
			return Business_HandleMenuDialog(playerid, response, listitem);

		case DIALOG_BUSINESS_SHOP:
			return Business_HandleShopDialog(playerid, response, listitem);

		case DIALOG_BUSINESS_BUY:
			return Business_HandleBuyDialog(playerid, response);
	}

	return 1;
}
