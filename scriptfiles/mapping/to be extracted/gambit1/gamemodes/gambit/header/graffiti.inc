
#define MAX_SPRAY	512
#define d_spraytag	2500

enum Grnfo {
	grID,
	Float: grX,
	Float: grY,
	Float: grZ,
	Float: grRX,
	Float: grRY,
	Float: grRZ,
	grAuthorID,
	grAuthorName[MAX_PLAYER_NAME],
	grFontSize,
	grText[200],
	grFontColor[20],
	grFont[64],
	grVarificated,
	grObject
}
new SprayInfo[MAX_SPRAY][Grnfo];