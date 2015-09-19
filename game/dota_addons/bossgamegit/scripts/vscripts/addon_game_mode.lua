-- Generated from templat
-- TODO --
require( 'CosmeticLib' )

if BossGame == nil then
	BossGame = class({})
end

function Precache( context )
	--[[
		Precache things we know we'll use.  Possible file types include (but not limited to):
			PrecacheResource( "model", "*.vmdl", context )
			PrecacheResource( "soundfile", "*.vsndevts", context )
			PrecacheResource( "particle", "*.vpcf", context )
			PrecacheResource( "particle_folder", "particles/folder", context )
	]]
		PrecacheUnitByNameSync("npc_dota_hero_pugna", context)
		PrecacheUnitByNameSync("npc_dota_hero_invoker", context)
		PrecacheUnitByNameSync("npc_dota_hero_batrider", context)
		PrecacheUnitByNameSync("npc_dota_hero_winter_wyvern", context)
		PrecacheUnitByNameSync("npc_dota_hero_alchemist", context)
		PrecacheUnitByNameSync("npc_dota_hero_drow_ranger", context)
		PrecacheUnitByNameSync("npc_dota_hero_rattletrap", context)
		PrecacheUnitByNameSync("npc_dota_hero_troll_warlord", context)
		PrecacheResource( "model", "models/heroes/techies/fx_techiesfx_stasis.mdl", context )
		PrecacheResource( "model", "models/heroes/tinker/tinker.mdl", context )
		PrecacheResource( "particle", "particles/ranger_bottle.vpcf", context )
		PrecacheResource( "particle", "particles/units/heroes/hero_abaddon/abaddon_death_coil.vpcf", context )
 		PrecacheResource("model", "models/roshan/luna_reference.vmdl", context)
		PrecacheResource( "model_folder", "models/heroes/crystal_maiden", context )
		PrecacheResource( "model_folder", "models/items/crystal_maiden", context )
		PrecacheResource( "model", "models/development/invisiblebox.vmdl", context )
		PrecacheResource( "model_folder", "models/heroes/ursa", context )
		PrecacheResource( "model_folder", "models/items/ursa", context )
		PrecacheResource( "model_folder", "models/heroes/drow", context )
		PrecacheResource( "model_folder", "models/items/drow", context )
		PrecacheResource( "model_folder", "models/heroes/rattletrap", context )
		PrecacheResource( "model_folder", "models/items/rattletrap", context )
		PrecacheResource( "model", "models/heroes/invoker/forge_spirit.mdl", context)


end




-- Create the game mode when we activate
function Activate()
	GameRules.BossGame = BossGame()
	GameRules.BossGame:InitGameMode()


end

function BossGame:OnPlayerLevelUp( keys )
		local npc = PlayerResource:GetPlayer(keys.player - 1)
		if(PlayerResource:GetSelectedHeroEntity(npc:GetPlayerID()):GetClassname() == "npc_dota_hero_ursa") then
			PlayerResource:GetSelectedHeroEntity(npc:GetPlayerID()):SetModelScale(keys.level / 8.5)
			print(PlayerResource:GetSelectedHeroEntity(npc:GetPlayerID()):GetModelScale())
		end

end

function BossGame:OnNPCSpawned( keys )

	print("work")
	local npc = EntIndexToHScript(keys.entindex)
 

	if npc:IsRealHero() and (npc:GetClassname() == "npc_dota_hero_rattletrap") then
		CosmeticLib:RemoveAll(npc)
		CosmeticLib:ReplaceWithSlotName( npc, "back", 9013 )
		CosmeticLib:ReplaceWithSlotName( npc, "head", 6823 )
		CosmeticLib:ReplaceWithSlotName( npc, "shoulder", 9326 )
		CosmeticLib:ReplaceWithSlotName( npc, "weapon", 9015 )


		print("YO ")
	end

	if npc:IsRealHero() and (npc:GetClassname() == "npc_dota_hero_crystal_maiden") then
		CosmeticLib:RemoveAll(npc)
		CosmeticLib:ReplaceWithSlotName( npc, "back", 7385 )
		CosmeticLib:ReplaceWithSlotName( npc, "head", 6686 )
		CosmeticLib:ReplaceWithSlotName( npc, "shoulder", 9326 )
		CosmeticLib:ReplaceWithSlotName( npc, "weapon", 6784 )


		print("YO ")
	end

	if npc:IsRealHero() and (npc:GetClassname() == "npc_dota_hero_drow_ranger") then
			CosmeticLib:RemoveAll(npc)
		CosmeticLib:ReplaceWithSlotName( npc, "head", 6785 )

		print("i rode the tractor ")
	end

		if npc:IsRealHero() and (npc:GetClassname() == "npc_dota_hero_ursa") then
			CosmeticLib:RemoveAll(npc)
		CosmeticLib:ReplaceWithSlotName( npc, "belt", 4303 )

		print("YO ")
	end

	if npc:IsRealHero() and (npc:GetClassname() == "npc_dota_hero_wisp") then
	npc:SetAbilityPoints(1)
	local ability = npc:GetAbilityByIndex(0)
	ability:SetLevel(1)

   	local key2 = PlayerResource:GetPlayerName(npc:GetPlayerID())

print("NPC SPAWNED NAME: ", npc:GetPlayerID())
		CustomGameEventManager:Send_ServerToAllClients( "playerhasspawned", {player = npc, playername = PlayerResource:GetPlayerName(npc:GetPlayerID())} )
		CustomGameEventManager:Send_ServerToPlayer( npc, "npc_spawned" , {} )

		
	end
end


function HeroSelectA( eventSourceIndex, args )


	PlayerResource:ReplaceHeroWith(args['player'], args['hero'], 0, 0)
end


function showHud( player )
		local npc = EntIndexToHScript(player:GetPlayerID())

			CustomGameEventManager:Send_ServerToPlayer( npc, "hudshown", player )

end

		

function BossGame:InitGameMode()
	GameRules:GetGameModeEntity():SetThink( "OnThink", self, "GlobalThink", 2 )
	GameRules:GetGameModeEntity():SetAnnouncerDisabled(true)
	GameRules:GetGameModeEntity():SetLoseGoldOnDeath(false)
	GameRules:GetGameModeEntity():SetBuybackEnabled(false)
	GameRules:GetGameModeEntity():SetFixedRespawnTime(30.0)
	GameRules:GetGameModeEntity():SetCustomGameForceHero("npc_dota_hero_wisp")
	ListenToGameEvent('npc_spawned', Dynamic_Wrap(BossGame, 'OnNPCSpawned'), self)
	ListenToGameEvent('dota_player_gained_level', Dynamic_Wrap(BossGame, 'OnPlayerLevelUp'), self)

	CustomGameEventManager:RegisterListener( "hero_select", HeroSelectA )


Convars:RegisterCommand( "playerID", function()

    local cmdPlayer = Convars:GetCommandClient()
    if cmdPlayer then
    	
        return print(cmdPlayer:GetPlayerID())
    end
end, "a", 0 )

Convars:RegisterCommand( "eventD", function()

    local cmdPlayer = Convars:GetCommandClient()
    if cmdPlayer then
    	
        return CustomGameEventManager:Send_ServerToPlayer( cmdPlayer, "eventD", {key1 = "HEY", key2 = "WOW"} )

    end
end, "a", 0 )




	self.m_TeamColors = {}
	self.m_TeamColors[DOTA_TEAM_GOODGUYS] = { 137, 207, 240 }	
	self.m_TeamColors[DOTA_TEAM_BADGUYS]  = { 139, 0, 0 }		


	for team = 0, (DOTA_TEAM_COUNT-1) do
		color = self.m_TeamColors[ team ]
		if color then
			SetTeamCustomHealthbarColor( team, color[1], color[2], color[3] )
		end
	end

	self.m_VictoryMessages = {}
	self.m_VictoryMessages[DOTA_TEAM_GOODGUYS] = "#VictoryMessage_GoodGuys"
	self.m_VictoryMessages[DOTA_TEAM_BADGUYS]  = "#VictoryMessage_BadGuys"
	

	self.m_GatheredShuffledTeams = {}



end
function BossGame:ColorForTeam( teamID )
	local color = self.m_TeamColors[ teamID ]
	if color == nil then
		color = { 255, 255, 255 } -- default to white
	end
	return color
end
function BossGame:UpdatePlayerColor( nPlayerID )
	if not PlayerResource:HasSelectedHero( nPlayerID ) then
		return
	end

	local hero = PlayerResource:GetSelectedHeroEntity( nPlayerID )
	if hero == nil then
		return
	end

	local teamID = PlayerResource:GetTeam( nPlayerID )
	local color = self:ColorForTeam( teamID )
	PlayerResource:SetCustomPlayerColor( nPlayerID, color[1], color[2], color[3] )
end

-- Evaluate the state of the game
function BossGame:OnThink()
	if GameRules:State_Get() == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
		--print( "Template addon script is running." )
	elseif GameRules:State_Get() >= DOTA_GAMERULES_STATE_POST_GAME then
		return nil
	end
	return 1
end


