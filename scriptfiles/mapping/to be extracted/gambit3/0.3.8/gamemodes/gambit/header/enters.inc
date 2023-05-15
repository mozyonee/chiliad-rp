
#define MAX_ENTERS              200

enum eInfo {
	eID,
	Float:eP[3],
	Float:ePe[3],
	eInt[2],
	eName[32],
	exInt[2],
	eMember,
}
new EnterInfo[MAX_ENTERS][eInfo];