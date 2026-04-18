#if defined CHILIAD_BOOTSTRAP
	#endinput
#endif
#define CHILIAD_BOOTSTRAP

#include "source/data/items.inc"

#include "source/core/hooks.inc"
#include "source/core/dialogs.inc"
#include "source/core/style.inc"
#include "source/core/messages.inc"
#include "source/core/commands.inc"
#include "source/core/database.inc"

#include "source/systems/accounts/accounts.inc"
#include "source/systems/characters/characters.inc"
#include "source/systems/general/general.inc"
#include "source/systems/admin/admin.inc"
#include "source/systems/inventory/inventory.inc"
#include "source/systems/banking/banking.inc"

#include "source/runtime/startup.inc"
#include "source/runtime/shutdown.inc"
#include "source/runtime/command_hooks.inc"
#include "source/runtime/player_hooks.inc"
