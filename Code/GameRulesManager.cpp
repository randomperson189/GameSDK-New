#include "GameRulesManager.h"

bool CGameRulesManager::CreateGameRules(const char* pRulesName)
{
	SEntitySpawnParams params;

	params.sName = "GameRules";
	params.pClass = gEnv->pEntitySystem->GetClassRegistry()->FindClass(pRulesName);
	params.nFlags |= ENTITY_FLAG_NO_PROXIMITY | ENTITY_FLAG_UNREMOVABLE;
	//params.id = 1;

	IEntity* pEntity = gEnv->pEntitySystem->SpawnEntity(params);

	CRY_ASSERT(pEntity);

	if (pEntity == NULL)
		return false;

	return true;
}
