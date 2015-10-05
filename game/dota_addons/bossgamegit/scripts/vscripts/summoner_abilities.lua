
--F = STRENGTH
--E = AGILITY
--W =  INTELLIGENCE
--,FFFA,AAAF,

validcombinations = {}
--K = COMBO
--V = OUTCOME

function useCombination( combination , event )
 for k,v in pairs(validcombinations) do
 	if combination == k then
 		CreateUnitByName(v, event.caster:GetAbsOrigin(), true, event.caster, event.caster, event.caster:GetTeamNumber())
 	end
 end
end


function applyModifier( event )
	modifiers = 0

	if(event.ability:GetAbilityName() == "summoner_strength") then
		if modifiers == 3 then


		end
		event.ability:ApplyDataDrivenModifier(event.caster, event.caster, "summoner_strength_modi", nil)

	end

	if(event.ability:GetAbilityName() == "summoner_agility") then

		event.ability:ApplyDataDrivenModifier(event.caster, event.caster, "summoner_agility_modi", nil)


	end

	if(event.ability:GetAbilityName() == "summoner_intelligence") then

		event.ability:ApplyDataDrivenModifier(event.caster, event.caster, "summoner_intelligence_modi", nil)


	end

end


	function summon( event )
		combo = ""
		strengthc = 0
		agilityc = 0
		intelligencec = 0
		for k,v in ipairs(event.caster:FindAllModifiers()) do
		if event.caster:FindModifierByName("summoner_strength_modi") ~= nil then
			combo = ("F".. combo)
			strengthc = strengthc + 1
		end
		if event.caster:FindModifierByName("summoner_agility_modi") ~= nil then
			combo = ("E".. combo)
			agilityc = agilityc + 1
		end
		if event.caster:FindModifierByName("summoner_intelligence_modi") ~= nil then
			combo = ("W".. combo)
			intelligencec = intelligencec + 1
		end
		end
		print(combo)

		useCombination(combo, event)
	end
