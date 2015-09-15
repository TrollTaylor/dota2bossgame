"use strict";

var playersselected = {};		
var hea = $.GetContextPanel();
var a = $("#picpanel");
var visi = true;
var aa = $( "#pugna" );
var pic = $( "#avapic" );
var players = {};
var  panelchild = {};
//'0' : "", '1' : "", '2' : "", '3' : "", '4' : "" 
//, 'clockwerk' : "npc_dota_hero_rattletrap", 'special_class_1' : "npc_dota_hero_luna"
var heroes = {};
var playersa = {};
var heores = {'medic' : "npc_dota_hero_pugna", 'tank' : "npc_dota_hero_alchemist", 'ranger' : "npc_dota_hero_drow_ranger", 'summoner' : "npc_dota_hero_enchantress", 'engineer' : "npc_dota_hero_rattletrap", 'pyro' : "npc_dota_hero_batrider", 'berserker' : "npc_dota_hero_troll_warlord", 'icedrag' : "npc_dota_hero_winter_wyvern"};
var boss = {};
var sele = -1;

var shouldstartgame = false;
function OnMyEvent( event_data )
{


}

function eventD(){

	$.Msg("Players : " + players);
	$.Msg("Playersa : " + playersa);
	$.Msg("Playersselected : " + playersselected);

}

function showHud(){

	
if(visi == true){
var i = 0;
	$.Msg("YES VISI")
visi = false;
for(i = 0; i < hea.GetChildCount(); i++){

if(hea.GetChild(i).id == "debug_pan"){


}else{

	hea.GetChild(i).visible = false;


}
}
}else{
visi = true;

	$.Msg("NO VISI")
	for(i = 0; i < hea.GetChildCount(); i++){

if(hea.GetChild(i).id == "debug_pan"){


}else{

	hea.GetChild(i).visible = true;


}
}
}

}


function startGame(){
hea.visible = false;
var pla = -1;
for (var key in playersselected) {
		var pl = parseInt(key);

	GameEvents.SendCustomGameEventToServer( "hero_select", { "player" :  pl , "hero" : playersselected[Players.GetLocalPlayer()]} );


pla = pla + 1;
$.Msg(" pla" + pla)
}
showHud();


}

function playerso(event_data)
{

	for(var i = 0; $("#playerpics").GetChildCount() > i; i++){
		$.Msg("Parent " + $("#playerpics").GetChild(i).id);

		$.Msg("Child " + $("#playerpics").GetChild(i).GetChild(0).id);


	}

		for(var i = 0; Players.GetMaxPlayers() > i; i++){

			if(Players.IsValidPlayerID(i)){

				$.Msg("VALID " + Players.GetPlayerName(i));
 				var playerInfo = Game.GetPlayerInfo(i);
 				$.Msg("I = " +  i);

				$("#playerpics").GetChild(i).GetChild(0).steamid = playerInfo["player_steamid"];
				$.Msg("Player " + Players.GetPlayerName(i) + "'s pic has been added to " + 	$("#playerpics").GetChild(i).GetChild(0).id + " " + playerInfo["player_steamid"]);

			}
		}

}
 
function FALSEHERO( event_data  ){
	var s = Players.GetLocalPlayer();
	playersselected[s] = null;
	players[players.length] = s;
//		for(var value in players)
//	{
 //	var playerInfo = Game.GetPlayerInfo(players[value]);
	//$("#playerpics").GetChild(players[value]).steamid = playerInfo["player_steamid"];
	//$.Msg("Changed playerpics child: " + $("#playerpics").GetChild(Players.GetLocalPlayer()).id + " to " + playerInfo["player_steamid"]  );


	//}

if(playersa[s] == null || playersa[s] == true){
$.Msg(Players.GetPlayerName(s) ," ", s);
$.Msg("thing ", event_data)
playersa[s] = false;

}else{

$.Msg(Players.GetPlayerName(s), " is real ")

}

}



function selectHero( hero )
{


	$.Msg(Players.GetPlayerName(Players.GetLocalPlayer()) + " has selected " + hero);

	var a = $("#" + playersselected[Players.GetLocalPlayer()]);


	playersselected[Players.GetLocalPlayer()] = null;
	sele = sele + 1;





	playersselected[Players.GetLocalPlayer()] = hero; 

	//heroes[Players.GetLocalPlayer()] =  hero;
	for(var value in heores){

	
	}

for (var value in playersa) {

if(value == playersa[Players.GetLocalPlayer()]){
	playersa[Players.GetLocalPlayer()]  = true;
}


}



	//$.Msg( playersselected[Players.GetLocalPlayer()] );


	for(var value in playersselected)
{
	if(playersselected[value] == null){

		$.Msg("Null " + playersselected[value] + " " + value)
		return;
	}else{ 
		$.Msg("Everyone is good! Starting game " + playersselected[value] + " " + Players.GetPlayerName(parseInt(value)))
		startGame();
}
}

}







(function()
{
			var pa = 150;



	for(var value in heores)
	{




		for(var i = 0; $.GetContextPanel().GetChildCount() > i; i++){

			
			if($.GetContextPanel().GetChild(i).id == heores[value]){
            $.GetContextPanel().GetChild(i).GetChild(0).GetChild(0).style.width = ("150px");

			
			$.GetContextPanel().GetChild(i).GetChild(0).GetChild(0).style.height = ("100px");


			}
		}
		for(var i = 0; $.GetContextPanel().GetChildCount() > i; i++){

			
		if($.GetContextPanel().GetChild(i).id == heores[value]){

			$.GetContextPanel().GetChild(i).style.marginTop = ("475px");
			
            $.GetContextPanel().GetChild(i).style.width = ("150px");

			$.GetContextPanel().GetChild(i).style.height = ("100px");

			$.GetContextPanel().GetChild(i).style.marginLeft = (pa + "px");

			$.Msg("Set " + $.GetContextPanel().GetChild(i).id + "'s left to " + pa + "px");
			//pa = pa + 115;
			pa = pa + 175;
			$.Msg("Now pa is "+ pa);


		}


	}


	}

		$.Msg( players );
GameEvents.Subscribe( "playerhasspawned", playerso);
GameEvents.Subscribe( "eventD", eventD);

GameEvents.Subscribe( "npc_spawned", FALSEHERO);
$.Msg($("#playerpics").GetChild(Players.GetLocalPlayer()).id);

})();