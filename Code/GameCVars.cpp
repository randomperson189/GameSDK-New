#include "GameCVars.h"
#include <CrySystem/ConsoleRegistration.h>

void SCVars::InitCVars(IConsole * pConsole)
{
	REGISTER_CVAR(g_godMode, 0, VF_CHEAT, "God Mode");
}