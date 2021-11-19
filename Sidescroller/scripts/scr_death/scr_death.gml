
function scr_death()
{
	scr_screenshake(5, 30);
	
		//if(!instance_exists(obj_PlayerDeath))
	//{
		instance_create_layer(x, y, "Player", obj_PlayerDeath)
	//}
	
	if(!audio_is_playing(snd_Death))
	{
		audio_play_sound(snd_Death, 1, 0);
	}
	
	if(!file_exists("Save.sav"))
	{
		global.target_x = global.checkpoint_x;
		global.target_y = global.checkpoint_y;
	
		scr_fade_out(global.checkpoint_room, global.target_x, global.target_y);
	}
	else
	{
		scr_loadgame();
	}

	instance_destroy();
}