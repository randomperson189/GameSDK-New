#include "Bullet.h"

namespace
{
	static void RegisterBulletComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CBulletComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterBulletComponent);
}

CBulletComponent::CBulletComponent() 
{

}

CBulletComponent::~CBulletComponent() 
{

}

void CBulletComponent::Initialize()
{
	CryLog("Initialized bullet");

	// Set the model
	const int geometrySlot = 0;
	GetEntity()->LoadGeometry(geometrySlot, "%ENGINE%/EngineAssets/Objects/primitive_sphere.cgf");

	// Load the custom bullet material.
	// This material has the 'mat_bullet' surface type applied, which is set up to play sounds on collision with 'mat_default' objects in Libs/MaterialEffects
	auto* pBulletMaterial = gEnv->p3DEngine->GetMaterialManager()->LoadMaterial("Materials/bullet");
	GetEntity()->SetMaterial(pBulletMaterial);

	// Now create the physical representation of the entity
	SEntityPhysicalizeParams physParams;
	physParams.type = PE_RIGID;
	physParams.mass = 1000.f;
	physParams.nFlagsOR = pef_log_collisions;
	GetEntity()->Physicalize(physParams);

	// Make sure that bullets are always rendered regardless of distance
	// Ratio is 0 - 255, 255 being 100% visibility
	GetEntity()->SetViewDistRatio(255);

	if (auto* pPhysics = GetEntity()->GetPhysics())
	{
		pe_action_impulse impulseAction;

		const float initialVelocity = 1000.f;

		// Set the actual impulse, in this cause the value of the initial velocity CVar in bullet's forward direction
		impulseAction.impulse = GetEntity()->GetWorldRotation().GetColumn1() * initialVelocity;

		pPhysics->Action(&impulseAction);
	}

	// Mark the entity to be replicated over the network
	m_pEntity->GetNetEntity()->BindToNetwork();
}

Cry::Entity::EventFlags CBulletComponent::GetEventMask() const 
{
	return Cry::Entity::EEvent::PhysicsCollision;
}

void CBulletComponent::ProcessEvent(const SEntityEvent& event) 
{
	{
		// Handle the OnCollision event, in order to have the entity removed on collision
		if (gEnv->bServer && event.event == Cry::Entity::EEvent::PhysicsCollision)
		{
			// Collision info can be retrieved using the event pointer
			// EventPhysCollision* physCollision = reinterpret_cast<EventPhysCollision*>(event.nParam[0]);

			// Queue removal of this entity, unless it has already been done
			gEnv->pEntitySystem->RemoveEntity(GetEntityId());

			CryLog("Hit something");
		}
	}
}