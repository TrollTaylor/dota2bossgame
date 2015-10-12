var screens = ["batrider", "drow", "pugna"];



(function()
{
//GameEvents.Subscribe( "optionchanged", optionChanged);
		

	loadingscreen = screens[Math.floor((Math.random() * screens.length) + 0	)];


		for(var i = 0; $.GetContextPanel().GetChildCount() > i; i++){


			if($.GetContextPanel().GetChild(i).id != loadingscreen )
			{
				$.Msg("doesnta = ", $.GetContextPanel().GetChild(i).id)
			$.GetContextPanel().GetChild(i).visible = false;

			}


			if($.GetContextPanel().GetChild(i).id == loadingscreen )
			{
				$.Msg(" = ", $.GetContextPanel().GetChild(i).id)
			$.GetContextPanel().GetChild(i).visible = true;

			}
		

			
		}
		$.Msg( "random number : " , screens[Math.floor((Math.random() * screens.length) + 0	)] );
//GameEvents.Subscribe( "playerhasspawned", playerso);
//GameEvents.Subscribe( "eventD", eventD);

//GameEvents.Subscribe( "npc_spawned", FALSEHERO);

})();