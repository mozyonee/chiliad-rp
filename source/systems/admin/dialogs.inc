#if defined CHILIAD_ADMIN_DIALOGS
	#endinput
#endif
#define CHILIAD_ADMIN_DIALOGS

#define ADMIN_INTERIOR_DIALOG_PAGE_SIZE (28)

static AdminInteriorDialogPage[MAX_PLAYERS];

Admin_ShowMenu(playerid)
{
	SPD(playerid, DIALOG_ADMIN_MENU, DSL,
		DIALOG_TITLE("Admin Menu"),
		P"1."W" Admins online\n"P"2."W" Admin help\n"P"3."W" Stop duty",
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CLOSE
	);
	return 1;
}

Admin_ShowHelp(playerid)
{
	new content[512], level = AdminData[playerid][Level];
	format(content, sizeof(content), "Level\tStatus\n");

	for (new i = 1; i <= 7; i++)
	{
		new row[64];
		format(row, sizeof(row), W"Admin Level "P"%d\t%s\n", i, level >= i ? (YES"Accessible") : (G"Locked"));
		strcat(content, row, sizeof(content));
	}

	SPD(playerid, DIALOG_ADMIN_HELP, DSTH,
		DIALOG_TITLE("Admin Help"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_BACK
	);
	return 1;
}

Admin_ShowHelpL1(playerid)
{
	SPD(playerid, DIALOG_ADMIN_HELP_L1, DSM,
		DIALOG_TITLE("Level 1 Help"),
		P"/aduty"W" - Toggle admin duty.\n\
		"P"/amenu"W" - Open the admin menu.\n\
		"P"/ahelp"W" - Open this help dialog.\n\
		"P"/admins"W" - View admins online.\n\
		"P"/a"W" - Send an admin chat message.\n\
		"P"/kick"W" - Kick a player.\n\
		"P"/goto"W" - Teleport to a player.\n\
		"P"/gethere"W" - Teleport a player to you.\n\
		"P"/spawn"W" - Return to server spawn.\n\
		"P"/gotobusiness"W" - Teleport to a business.\n\
		"P"/pos"W" - Teleport to coordinates.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Admin_ShowHelpL2(playerid)
{
	SPD(playerid, DIALOG_ADMIN_HELP_L2, DSM,
		DIALOG_TITLE("Level 2 Help"),
		P"/slap"W" - Slap a player upward.\n\
		"P"/freeze"W" - Freeze a player.\n\
		"P"/unfreeze"W" - Unfreeze a player.\n\
		"P"/jetpack"W" - Give yourself a jetpack.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Admin_ShowHelpL3(playerid)
{
	SPD(playerid, DIALOG_ADMIN_HELP_L3, DSM,
		DIALOG_TITLE("Level 3 Help"),
		P"/sethp"W" - Set player health.\n\
		"P"/setarm"W" - Set player armour.\n\
		"P"/debug"W" - View your position data.\n\
		"P"/tpint"W" - Browse and teleport to an interior.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Admin_ShowHelpL4(playerid)
{
	SPD(playerid, DIALOG_ADMIN_HELP_L4, DSM,
		DIALOG_TITLE("Level 4 Help"),
		"No commands available for this level yet.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Admin_ShowHelpL5(playerid)
{
	SPD(playerid, DIALOG_ADMIN_HELP_L5, DSM,
		DIALOG_TITLE("Level 5 Help"),
		P"/cc"W" - Clear chat.\n\
		"P"/si"W" - Set your interior.\n\
		"P"/sw"W" - Set your virtual world.\n\
		"P"/sa"W" - Set your angle.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Admin_ShowHelpL6(playerid)
{
	SPD(playerid, DIALOG_ADMIN_HELP_L6, DSM,
		DIALOG_TITLE("Level 6 Help"),
		P"/setskin"W" - Set a player's skin.\n\
		"P"/makeadmin"W" - Set a player's admin level.\n\
		"P"/createbusiness"W" - Create a new business.\n\
		"P"/delbusiness"W" - Delete a business.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Admin_ShowHelpL7(playerid)
{
	SPD(playerid, DIALOG_ADMIN_HELP_L7, DSM,
		DIALOG_TITLE("Level 7 Help"),
		"No commands available for this level yet.",
		DIALOG_BUTTON_BACK,
		""
	);
	return 1;
}

Admin_HandleMenuDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	switch (listitem)
	{
		case 0:
		{
			pc_cmd_admins(playerid);
		}
		case 1:
		{
			Admin_ShowHelp(playerid);
		}
		case 2:
		{
			pc_cmd_aduty(playerid);
		}
	}

	return 1;
}

Admin_HandleHelpDialog(playerid, response, listitem)
{
	if (!response)
	{
		return Admin_ShowMenu(playerid);
	}

	new level = AdminData[playerid][Level];
	new selected_level = listitem + 1;

	if (selected_level > level && !IsPlayerAdmin(playerid))
	{
		SendError(playerid, "You do not have access to this help level.");
		return Admin_ShowHelp(playerid);
	}

	switch (selected_level)
	{
		case 1: Admin_ShowHelpL1(playerid);
		case 2: Admin_ShowHelpL2(playerid);
		case 3: Admin_ShowHelpL3(playerid);
		case 4: Admin_ShowHelpL4(playerid);
		case 5: Admin_ShowHelpL5(playerid);
		case 6: Admin_ShowHelpL6(playerid);
		case 7: Admin_ShowHelpL7(playerid);
	}

	return 1;
}

Admin_HandleLevelHelpDialog(playerid)
{
	return Admin_ShowHelp(playerid);
}

Admin_ShowInteriorDialog(playerid, page = 0)
{
	new last_page = (sizeof(InteriorTeleports) - 1) / ADMIN_INTERIOR_DIALOG_PAGE_SIZE;

	if (page < 0)
	{
		page = 0;
	}
	else if (page > last_page)
	{
		page = last_page;
	}

	AdminInteriorDialogPage[playerid] = page;

	new content[3072], row[128], start = page * ADMIN_INTERIOR_DIALOG_PAGE_SIZE;
	new end = start + ADMIN_INTERIOR_DIALOG_PAGE_SIZE;

	if (end > sizeof(InteriorTeleports))
	{
		end = sizeof(InteriorTeleports);
	}

	format(content, sizeof(content), "Name\tInterior\n");

	if (page > 0)
	{
		strcat(content, P"- Previous page\n", sizeof(content));
	}

	for (new i = start; i < end; i++)
	{
		format(row, sizeof(row), P"%d."W" %s\t"W"%d\n",
			InteriorTeleports[i][InteriorTeleportSourceID],
			InteriorTeleports[i][InteriorTeleportName],
			InteriorTeleports[i][InteriorTeleportID]
		);
		strcat(content, row, sizeof(content));
	}

	if (page < last_page)
	{
		strcat(content, P"- Next page\n", sizeof(content));
	}

	SPD(playerid, DIALOG_ADMIN_INTERIORS, DSTH,
		DIALOG_TITLE("Interiors"),
		content,
		DIALOG_BUTTON_SUBMIT,
		DIALOG_BUTTON_CLOSE
	);
	return 1;
}

Admin_HandleInteriorDialog(playerid, response, listitem)
{
	if (!response)
	{
		return 1;
	}

	new page = AdminInteriorDialogPage[playerid];
	new last_page = (sizeof(InteriorTeleports) - 1) / ADMIN_INTERIOR_DIALOG_PAGE_SIZE;
	new start = page * ADMIN_INTERIOR_DIALOG_PAGE_SIZE;
	new end = start + ADMIN_INTERIOR_DIALOG_PAGE_SIZE;

	if (end > sizeof(InteriorTeleports))
	{
		end = sizeof(InteriorTeleports);
	}

	new offset;
	if (page > 0)
	{
		if (listitem == 0)
		{
			return Admin_ShowInteriorDialog(playerid, page - 1);
		}
		offset = 1;
	}

	new count = end - start;
	if (listitem >= offset && listitem < offset + count)
	{
		return Admin_TeleportToInterior(playerid, start + listitem - offset);
	}

	if (page < last_page && listitem == offset + count)
	{
		return Admin_ShowInteriorDialog(playerid, page + 1);
	}

	return Admin_ShowInteriorDialog(playerid, page);
}
