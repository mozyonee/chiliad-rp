#if defined CHILIAD_ITEMS
	#endinput
#endif
#define CHILIAD_ITEMS

enum E_ITEM
{
	INVALID_ITEM_ID,

	CASH,

	// Electronics
	PHONE = 100,
	WATCH,
	CAMERA,
	RADIO,

	// Tools
	CROWBAR = 200,
	GAS_CAN,
	FISHING_ROD,
	BAIT,
	REPAIR_KIT,
	LIGHTER,

	// Consumables
	WATER = 300,
	SODA,
	BREAD,
	SANDWICH,
	CHIPS,
	CIGARETTES,

	ARMOUR = 400,

	BANK_CARD = 500,

	// Dynamic items. No next item is defined, so valid skins are limited by skin ID validation.
	SKIN = 1000
}
