#define FILTERSCRIPT


#define RUN_TESTS


#include <a_samp>

#include <YSI\y_iterate>
#include <YSI\y_timers>
#include <streamer>
#include <Line>
#include <Zipline>

#include <YSI\y_testing>



public OnFilterScriptInit()
{
	new
		tests,
		fails,
		func[33];

	Testing_Run(tests, fails, func);

	return 1;
}

Test:Zipline()
{
	new ziplineid = CreateZipline(-9.2563, 54.6999, 11.1468, 8.9720, 15.1808, 6.7617, 1, 2);
	ASSERT(IsValidZipline(ziplineid) == 1);

	ASSERT(IsValidDynamicArea(GetZiplineStartAreaID(ziplineid)) == 1);
	ASSERT(IsValidDynamicArea(GetZiplineEndAreaID(ziplineid)) == 1);
	ASSERT(IsValidLineSegment(GetZiplineLineID(ziplineid)) == 1);

	new Float:x, Float:y, Float:z;
	GetZiplineStartPos(ziplineid, x, y, z);
	ASSERT(x == -9.2563 && y == 54.6999 && z == 11.1468);

	SetZiplineStartPos(ziplineid, -9.1, 54.1, 11.1);
	GetZiplineStartPos(ziplineid, x, y, z);
	ASSERT(x == -9.1 && y == 54.1 && z == 11.1);

	GetZiplineEndPos(ziplineid, x, y, z);
	ASSERT(x == 8.9720 && y == 15.1808 && z == 6.7617);

	SetZiplineEndPos(ziplineid, 8.1, 15.1, 6.1);
	GetZiplineEndPos(ziplineid, x, y, z);
	ASSERT(x == 8.1 && y == 15.1 && z == 6.1);

	ASSERT(GetZiplineWorld(ziplineid) == 1);
	SetZiplineWorld(ziplineid, 5);
	ASSERT(GetZiplineWorld(ziplineid) == 5);

	ASSERT(GetZiplineInterior(ziplineid) == 2);
	SetZiplineInterior(ziplineid, 10);
	ASSERT(GetZiplineInterior(ziplineid) == 10);

/*
	Can't really be tested properly
	GetZiplineVector(ziplineid, x, y, z);
	IsPlayerOnZipline(playerid);
	GetPlayerZipline(playerid);
*/

	DestroyZipline(ziplineid);
	ASSERT(!IsValidZipline(ziplineid));
}
