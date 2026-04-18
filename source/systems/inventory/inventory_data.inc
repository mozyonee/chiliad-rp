#if defined CHILIAD_INVENTORY_DATA
	#endinput
#endif
#define CHILIAD_INVENTORY_DATA

#define INVENTORY_MAX_CACHE_ITEMS (128)
#define INVENTORY_MAX_DIALOG_ITEMS (64)
#define INVENTORY_ITEM_NAME_LENGTH (32)

enum E_INVENTORY_CACHE_DATA
{
	InventoryItemID,
	InventoryAmount
}

new InventoryData[MAX_PLAYERS][INVENTORY_MAX_CACHE_ITEMS][E_INVENTORY_CACHE_DATA];
new bool:InventoryLoaded[MAX_PLAYERS];
new InventorySelectedItem[MAX_PLAYERS];
new InventoryDialogItems[MAX_PLAYERS][INVENTORY_MAX_DIALOG_ITEMS];
new InventoryDialogItemCount[MAX_PLAYERS];
