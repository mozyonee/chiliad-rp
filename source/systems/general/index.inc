#if defined CHILIAD_GENERAL
	#endinput
#endif
#define CHILIAD_GENERAL

forward bool:Admin_IsDuty(playerid);
forward Account_GetName(playerid, name[], size = sizeof name);
forward bool:Settings_IsOOCChatEnabled(playerid);
forward pc_cmd_n(playerid, params[]);

#include "source/systems/general/data.inc"
#include "source/systems/general/utils.inc"
#include "source/systems/general/settings/index.inc"
#include "source/systems/general/chat.inc"
#include "source/systems/general/cmds.inc"
#include "source/systems/general/menu/index.inc"
#include "source/systems/general/hooks.inc"
