#if defined CHILIAD_STYLE
	#endinput
#endif
#define CHILIAD_STYLE

#if defined SCM
	#undef SCM
#endif
#if defined SCMA
	#undef SCMA
#endif
#if defined SPD
	#undef SPD
#endif

#define SCM SendClientMessage
#define SCMA SendClientMessageToAll
#define SPD Dialog_ShowPlayer

#define DSM DIALOG_STYLE_MSGBOX
#define DSI DIALOG_STYLE_INPUT
#define DSL DIALOG_STYLE_LIST
#define DSP DIALOG_STYLE_PASSWORD
#define DST DIALOG_STYLE_TABLIST
#define DSTH DIALOG_STYLE_TABLIST_HEADERS

#define P "{479FF2}" // Primary blue.
#define G "{AFAFAF}" // Gray.
#define W "{FFFFFF}" // White.
#define O "{FFD700}" // Orange.
#define YES "{48FC23}" // Confirm green.
#define NO "{FF0000}" // Deny red.
#define RED "{BC2C2C}" // Red.
#define YELLOW "{FFFF00}" // Yellow.
#define GREEN "{33AA33}" // Green.
#define BLUE "{6495ED}" // Blue.

#define COLOR_PRIMARY (0x479FF2FF)
#define COLOR_ERROR (0xE74C3CFF)
#define COLOR_SUCCESS (0x2ECC71FF)
#define COLOR_INFO (0x3498DBFF)
#define COLOR_OOC (0xC0C0C0FF)
#define COLOR_RP (0xC2A2DAFF)
#define COLOR_PM (0xF1C40FFF)
#define COLOR_WHITE (0xFFFFFFFF)
#define COLOR_GRAY (0xAFAFAFFF)
#define COLOR_GREEN (0x33AA33FF)

#define DIALOG_TITLE(%0) P"|"W" "%0

#define DIALOG_BUTTON_SUBMIT "Submit"
#define DIALOG_BUTTON_CANCEL "Cancel"
#define DIALOG_BUTTON_NEXT "Next"
#define DIALOG_BUTTON_BACK "Previous"
#define DIALOG_BUTTON_YES "Yes"
#define DIALOG_BUTTON_NO "No"
#define DIALOG_BUTTON_CLOSE "Close"
