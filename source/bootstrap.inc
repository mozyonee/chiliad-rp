#if defined CHILIAD_BOOTSTRAP
	#endinput
#endif
#define CHILIAD_BOOTSTRAP

#include "source/data/items.inc"
#include "source/data/vehicle_models.inc"

#include "source/core/hooks.inc"
#include "source/core/dialogs.inc"
#include "source/core/style.inc"
#include "source/core/messages.inc"
#include "source/core/commands.inc"
#include "source/core/database.inc"

#include "source/world/zones/zones.inc"

#include "source/systems/accounts/index.inc"
#include "source/systems/characters/index.inc"
#include "source/systems/general/index.inc"
#include "source/systems/admin/index.inc"
#include "source/systems/inventory/index.inc"
#include "source/systems/banking/index.inc"
#include "source/systems/vehicles/index.inc"

#include "source/runtime/startup.inc"
#include "source/runtime/shutdown.inc"
#include "source/runtime/command_hooks.inc"
#include "source/runtime/player_hooks.inc"
