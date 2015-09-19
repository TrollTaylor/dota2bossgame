
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
		useCombination("FFFF",event)
	end
