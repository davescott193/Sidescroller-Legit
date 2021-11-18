if(distance_to_point(mouse_x, mouse_y) <= 0)
{
	if(!hover)
	{
		audio_play_sound(snd_menu_switch,1,0)
	}
	hover = true;
	if(mouse_check_button_pressed(mb_any))
	{
		global.door_Prologue = false;
		global.door_TheBeach = false;
		global.door_Caverns = false;
		global.door_Highrise = false;
		global.door_Camp = false;
		global.cheat = false;
		audio_play_sound(snd_Step,1,0);
		scr_fade_out(Prolouge,60,630)
	}
}
else
{
	hover = false;
}
