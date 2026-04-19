#if defined CHILIAD_BUSINESSES_DATA
	#endinput
#endif
#define CHILIAD_BUSINESSES_DATA

#define MAX_BUSINESSES 100
#define INVALID_BUSINESS_ID (0)
#define BUSINESS_VIRTUAL_WORLD_BASE (20000)
#define BUSINESS_MAX_SHOP_ITEMS (20)

enum E_BUSINESS_TYPE
{
	TYPE_GROCERIES,
	TYPE_GAS_STATION,
	TYPE_CLOTHING,
	TYPE_BAR,
	TYPE_AMMO,
	TYPE_GYM,
	TYPE_ELECTRONICS
}

enum E_BUSINESS_DATA
{
	ID,
	OwnerID,
	E_BUSINESS_TYPE:Type,
	Name[64],
	Price,
	Balance,
	Stock,
	MaxStock,
	Locked,
	Float:ExteriorX,
	Float:ExteriorY,
	Float:ExteriorZ,
	Float:InteriorX,
	Float:InteriorY,
	Float:InteriorZ,
	InteriorID,
	VirtualWorld,

	// Runtime handles
	PickupID,
	Text3D:LabelID
}

new BusinessData[MAX_BUSINESSES][E_BUSINESS_DATA];
new BusinessCount;
new E_ITEM:BusinessShopItems[MAX_PLAYERS][BUSINESS_MAX_SHOP_ITEMS];
new BusinessShopPrices[MAX_PLAYERS][BUSINESS_MAX_SHOP_ITEMS];
new BusinessShopItemCount[MAX_PLAYERS];
new BusinessDialogItems[MAX_PLAYERS][MAX_BUSINESSES];
new BusinessDialogItemCount[MAX_PLAYERS];
new BusinessCurrentID[MAX_PLAYERS] = { -1, ... };
