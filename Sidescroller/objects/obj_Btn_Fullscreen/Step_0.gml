if(distance_to_point(mouse_x, mouse_y) <= 0)
{
	if(!hover)
	{
		audio_play_sound(snd_menu_switch,1,0)
	}
	hover = true;
	if mouse_check_button_pressed(mb_any)
	{
		if window_get_fullscreen()
		{
			window_set_fullscreen(false);
		}
		else
		{
			window_set_fullscreen(true);
		}
   }
}
else
{
	hover = false;
}
