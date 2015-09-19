function arrow_shoot(event)
	local info = {
		Ability = event.ability,
		EffectName = "particles/units/heroes/hero_mirana/mirana_spell_arrow.vpcf",
		vSpawnOrigin = event.caster:GetAbsOrigin(),
 	fDistance = 2000,
 	fStartRadius = 64,
 	fEndRadius = 64,
 	Source = event.caster,
 	bHasFrontalCone = false,
 	bReplaceExisting = false,
 	iUnitTargetTeam = DOTA_UNIT_TARGET_TEAM_ENEMY,
 	iUnitTargetFlags = DOTA_UNIT_TARGET_FLAG_NONE,
 	iUnitTargetType = DOTA_UNIT_TARGET_HERO,
 	fExpireTime = GameRules: GetGameTime() + 10.0,
 	bDeleteOnHit = true,
 	vVelocity = event.caster:GetForwardVector() * 1800,
 	bProvidesVision = true,
 	iVisionRadius = 1000,
 	iVisionTeamNumber = event.caster:GetTeamNumber(),
 	fMaxSpeed = 20



	}	
	ProjectileManager:CreateLinearProjectile(info)

	end	