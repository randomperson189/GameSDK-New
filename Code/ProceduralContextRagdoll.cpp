// Copyright 2012-2021 Crytek GmbH / Crytek Group. All rights reserved.

/*************************************************************************
-------------------------------------------------------------------------
Description: ProceduralContext for the ProceduralClipRagdoll from CryMannequin

-------------------------------------------------------------------------
History:
- 27.09.2012: Created by Stephen M. North

*************************************************************************/
#include <StdAfx.h>

#include "ProceduralContextRagdoll.h"

CRYREGISTER_CLASS(CProceduralContextRagdoll);

CProceduralContextRagdoll::CProceduralContextRagdoll()
	: m_bForceRagdollFinish(false)
{
	Reset();
}

void CProceduralContextRagdoll::EnableRagdoll(const EntityId entityID, const bool bAlive, const float stiffness, const bool bFromProcClip)
{

}

void CProceduralContextRagdoll::DisableRagdoll(float blendOutTime)
{

}

void CProceduralContextRagdoll::QueueRagdoll(bool bAlive)
{

}

void CProceduralContextRagdoll::Update(float timePassedSeconds)
{

}

void CProceduralContextRagdoll::Reset()
{

}

void CProceduralContextRagdoll::ForceRagdollFinish(IActor* piActor, bool bForceDead)
{

}