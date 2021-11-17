if(distance_to_point(mouse_x, mouse_y) <= 0)
{
	if(!hover)
	{
		audio_play_sound(snd_menu_switch,1,0)
	}
	hover = true;
	if(mouse_check_button_pressed(mb_any))
	{
		audio_play_sound(snd_Step,1,0);
		scr_loadgame();
	}
}
else
{
	hover = false;
}
