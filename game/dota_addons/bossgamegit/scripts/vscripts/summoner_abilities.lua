
--F = FIRE
--E = EARTH
--A = AIR
--W = WATER
validcombinations = {FFFF="npc_summoner_fire_spirit",EEEE="npc_summoner_earth_spirit",AAAA="npc_summoner_tornado_spirit",WWWW="npc_summoner_water_spirit"}
--K = COMBO
--V = OUTCOME

function useCombination(combination,event)
 for k,v in pairs(validcombinations) do
 	if combination == k then
 		CreateUnitByName(v, event.caster:GetAbsOrigin(), true, event.caster, event.caster, event.caster:GetTeamNumber())
 	end
 end
 return true;

	end

	function summon(event)
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
		print(combo)
		useCombination(combo, event)
	end
