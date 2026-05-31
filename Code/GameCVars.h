#pragma once

#include "StdAfx.h"

struct SCVars
{
	int g_godMode;

public:
	void InitCVars(IConsole *pConsole);
	void InitCCmds(IConsole *pConsole);

protected:
	static void CmdKill(IConsoleCmdArgs* pArgs);
};