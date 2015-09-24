
--F = FIRE
--E = EARTH
--A = AIR
--W = WATER
--,FFFA,AAAF,

validcombinations = {FFFF="npc_summoner_fire_spirit",EEEE="npc_summoner_rock_spirit",AAAA="npc_summoner_tornado_spirit",WWWW="npc_summoner_water_spirit",WWAA="npc_summoner_hurricane_spirit",FFFE="npc_summer_magma_spirit",WWEE="npc_summoner_mud_golem",FFEE="npc_summoner_fire_tree",EEEF="npc_summoner_volcanic_golem",WWWE="npc_summoner_swamp_golem",FEAW="npc_summoner_elemental_spirit",EEEW="npc_summoner_sludge_monster",AAAW="npc_summoner_mystical_fog",WWWA="npc_summoner_mystical_wip",FFAA="npc_summoner_energy_spirit",}
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

	if(event.ability:GetAbilityName() == "summoner_fire") then

		print("my mix tape is fire")

	end


	if(event.ability:GetAbilityName() == "summoner_earth") then

		print("my mix tape is ground shaking")

	end

end


	function summon( event )
		combo = ""
		for k,v in ipairs(event.caster:FindAllModifiers()) do
		if event.caster:FindModifierByName("summoner_fire_modi") ~= nil then
			combo = ("F".. combo)
		end
		if event.caster:FindModifierByName("summoner_earth_modi") ~= nil then
			combo = ("E".. combo)
		end
		if event.caster:FindModifierByName("summoner_air_modi") ~= nil then
			combo = ("A".. combo)
		end
		if event.caster:FindModifierByName("summoner_water_modi") ~= nil then
			combo = ("W".. combo)
		end
		end

		useCombination(combo, event)
	end
