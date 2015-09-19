

--SHIELD BUBBLE ABILITY MAYBE

local unitsa = nil

function trapSpawn( event )

	print("trap spawned")



end

function trapTrap( event )

	local unit = FindUnitsInRadius(3 , event.caster:GetAbsOrigin() , nil , 300, DOTA_UNIT_TARGET_TEAM_FRIENDLY , DOTA_UNIT_TARGET_HERO , 0 , 0 , false)

	for unitcount =  1, #unit do
	
		if unit[unitcount] ~= nil then

local info = 
{
	Target = event.caster,
	Source = event.caster,
	Ability = event.caster:GetAbilityByIndex(0),	
	EffectName = "particles/units/heroes/hero_meepo/meepo_earthbind_projectile_fx.vpcf",
	vSourceLoc= event.caster:GetAbsOrigin(),
	bDrawsOnMinimap = false, 
        bDodgeable = false,
        bIsAttack = false, 
        bVisibleToEnemies = true,
        bReplaceExisting = false,
        flExpireTime = GameRules:GetGameTime() + 10,
	bProvidesVision = true,
	iVisionRadius = 400,
	iVisionTeamNumber = event.caster:GetTeamNumber()
}
	ProjectileManager:CreateTrackingProjectile(info)

		print("Projectile Launched!!!!!!!!!! Stats under me")
		print(info)
			event.caster:ForceKill(false)
			
		end

		end





end

function projectileHit( event )
	print("Applying modifier")
	event.ability:ApplyDataDrivenModifier(event.caster, unitsa, "trap_bind", {})
end


function spawnTrap( event )

	print("trap spawning")

local trap = CreateUnitByName("engineer_trap", event.caster:GetAbsOrigin(), false, event.caster, event.caster, event.caster:GetTeamNumber())


end

function spawnTurret( event )

	print("turret spawning")

local turret = CreateUnitByName("engineer_turret", event.caster:GetAbsOrigin(), false, event.caster, event.caster, event.caster:GetTeamNumber())


end