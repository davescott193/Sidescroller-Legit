if(distance_to_point(mouse_x, mouse_y) <= 0)
{
	if(!hover)
	{
		audio_play_sound(snd_menu_switch,1,0)
	}
	hover = true;
	if(mouse_check_button_pressed(mb_any))
	{
		global.door_Prologue = true;
		global.door_TheBeach = true;
		global.door_Caverns = true;
		global.door_Highrise = true;
		global.door_Camp = true;
		global.cheat = true;
		audio_play_sound(snd_Step,1,0);
		scr_fade_out(TestLevel, 64, 675)
	}
}
else
{
	hover = false;
}
