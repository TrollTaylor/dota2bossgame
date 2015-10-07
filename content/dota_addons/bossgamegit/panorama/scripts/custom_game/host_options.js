"use strict";

var options = {'bossSelection' : 0, 'bossHeroSelection' : 0}



function optionChanged(event_data)
{
	var id = 0;
for (var key in options) {
id = id + 1;
if(key == event_data['option']){
	options[key] = event_data['option2'];
}
}
$.Msg(options);



}


function changeOption(option , option2)
{

	GameEvents.SendCustomGameEventToServer( "optionchange", { "option" : option, "option2" : option2 } );


}


(function()
{
GameEvents.Subscribe( "optionchanged", optionChanged);

//		$.Msg( players );
//GameEvents.Subscribe( "playerhasspawned", playerso);
//GameEvents.Subscribe( "eventD", eventD);

//GameEvents.Subscribe( "npc_spawned", FALSEHERO);

})();