#if defined CHILIAD_INVENTORY_HOOKS
	#endinput
#endif
#define CHILIAD_INVENTORY_HOOKS

Inventory_OnDialogResponse(playerid, dialogid, response, listitem, const inputtext[])
{
	switch (dialogid)
	{
		case DIALOG_INVENTORY_LIST:
			return Inventory_HandleListDialog(playerid, response, listitem);

		case DIALOG_INVENTORY_ITEM:
			return Inventory_HandleItemDialog(playerid, response, listitem);

		case DIALOG_INVENTORY_GIVE:
			return Inventory_HandleGiveDialog(playerid, response, inputtext);

		case DIALOG_INVENTORY_THROW:
			return Inventory_HandleThrowDialog(playerid, response, inputtext);
	}

	return 1;
}
