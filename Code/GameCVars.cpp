#include "GameCVars.h"
#include <CrySystem/ConsoleRegistration.h>

// game related cvars must start with an g_
// game server related cvars must start with sv_
// game client related cvars must start with cl_
// no other types of cvars are allowed to be defined here!
void SCVars::InitCVars(IConsole * pConsole)
{
	REGISTER_CVAR(g_godMode, 0, VF_CHEAT, "God Mode");
}

void SCVars::InitCCmds(IConsole * pConsole)
{
	REGISTER_COMMAND("kill", CmdKill, VF_RESTRICTEDMODE, "Kills the player.");
}

void SCVars::CmdKill(IConsoleCmdArgs * pArgs)
{
	CryLogAlways("TEST!!!!!!!");
}