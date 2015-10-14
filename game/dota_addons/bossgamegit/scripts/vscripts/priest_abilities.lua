

--Holy Aura : provides hp regen to nearby allies , stacks 

-- Armor Reduction Ability : point target, reduces targets armor by a bit ,  stacks


function redemption(event)

	event.target:Purge(false, true, false, true, false)

end



function ascension(event)


	if event.unit:IsRangedAttacker() then
		print("is ranged")

	local angel = CreateUnitByName("npc_priest_angel_ranged", event.unit:GetAbsOrigin(), true, nil, nil, event.unit:GetTeamNumber())
	event.ability:ApplyDataDrivenModifier(event.caster,angel,"modifier_ascension_effects",{})
	angel:CreatureLevelUp(event.unit:GetLevel() - 1)
	angel:SetModelScale(event.unit:GetModelScale() / 1)
	angel:SetModel(event.unit:GetModelName())
	angel:SetOwner(event.unit)
	angel:SetControllableByPlayer(event.unit:GetPlayerID(), true)	
		


	end

	if not event.unit:IsRangedAttacker() then
		print("not ranged")

	local angel = CreateUnitByName("npc_priest_angel", event.unit:GetAbsOrigin(), true, nil, nil, event.unit:GetTeamNumber())
	event.ability:ApplyDataDrivenModifier(event.caster,angel,"modifier_ascension_effects",{})
	angel:CreatureLevelUp(event.unit:GetLevel() - 1)
	angel:SetModel(event.unit:GetModelName())
	angel:SetModelScale(event.unit:GetModelScale() / 1)
	angel:SetOwner(event.unit)
	angel:SetControllableByPlayer(event.unit:GetPlayerID(), true)	


	end
end
