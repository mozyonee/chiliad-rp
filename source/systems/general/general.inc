#if defined CHILIAD_GENERAL
	#endinput
#endif
#define CHILIAD_GENERAL

forward bool:Admin_IsDuty(playerid);
forward Account_GetName(playerid, name[], size = sizeof name);
forward bool:Settings_IsOOCChatEnabled(playerid);
forward pc_cmd_n(playerid, params[]);

#include "source/systems/general/general_data.inc"
#include "source/systems/general/general_utils.inc"
#include "source/systems/general/settings/settings.inc"
#include "source/systems/general/general_chat.inc"
#include "source/systems/general/general_cmds.inc"
#include "source/systems/general/menu/menu.inc"
#include "source/systems/general/general_hooks.inc"
