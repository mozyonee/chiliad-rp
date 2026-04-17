#if defined CHILIAD_CHARACTERS_DATA
	#endinput
#endif
#define CHILIAD_CHARACTERS_DATA

#define CHARACTER_MAX_PER_ACCOUNT (10)
#define CHARACTER_MIN_NAME_LENGTH (5)
#define CHARACTER_DEFAULT_SKIN (60)
#define CHARACTER_RESUME_WINDOW_SECONDS (15 * 60)

#define CHARACTER_DEFAULT_X (1958.3783)
#define CHARACTER_DEFAULT_Y (1343.1572)
#define CHARACTER_DEFAULT_Z (15.3746)
#define CHARACTER_DEFAULT_ANGLE (269.1425)

enum E_CHARACTER_DATA
{
	ID,
	AccountID,
	Name[MAX_PLAYER_NAME + 1],
	Skin,
	Age,
	Sex,
	Ethnos,
	Float:LastX,
	Float:LastY,
	Float:LastZ,
	Float:LastAngle,
	LastInterior,
	LastWorld,
	LastUnloadedAt,
	bool:Loaded
}

enum E_CHARACTER_LOGIN_DATA
{
	LoginCharacterID,
	bool:HasPendingLoginCharacter
}

enum E_CHARACTER_LIST_DATA
{
	ListID,
	ListName[MAX_PLAYER_NAME + 1],
	ListSkin
}

new CharacterData[MAX_PLAYERS][E_CHARACTER_DATA];
// Stores the character selected by a connecting character name until account login succeeds.
new CharacterLoginData[MAX_PLAYERS][E_CHARACTER_LOGIN_DATA];
new CharacterList[MAX_PLAYERS][CHARACTER_MAX_PER_ACCOUNT][E_CHARACTER_LIST_DATA];
new CharacterListCount[MAX_PLAYERS];
