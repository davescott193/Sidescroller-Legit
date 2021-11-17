if (keyboard_check_pressed(global.key_fullscreen))
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
