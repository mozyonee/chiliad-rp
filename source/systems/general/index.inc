#if defined CHILIAD_GENERAL
	#endinput
#endif
#define CHILIAD_GENERAL

forward bool:Admin_IsDuty(playerid);
forward bool:Admin_Require(playerid, level, bool:duty = true);
forward Account_GetName(playerid, name[], size = sizeof name);
forward bool:Settings_IsOOCChatEnabled(playerid);
forward pc_cmd_n(playerid, params[]);
forward General_ShowHelp(playerid);
forward General_ShowCommandsHelp(playerid);
forward General_ShowVehiclesHelp(playerid);
forward General_ShowBusinessesHelp(playerid);
forward General_HandleHelpMain(playerid, response, listitem);

#include "source/systems/general/data.inc"
#include "source/systems/general/utils.inc"
#include "source/systems/general/settings/index.inc"
#include "source/systems/general/chat.inc"
#include "source/systems/general/dialogs.inc"
#include "source/systems/general/commands.inc"
#include "source/systems/general/menu/index.inc"
#include "source/systems/general/hooks.inc"
