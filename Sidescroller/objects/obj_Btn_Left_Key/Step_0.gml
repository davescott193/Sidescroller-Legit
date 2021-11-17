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
		if(!detecting_input) and (!global.detecting_input)
		{
			global.detecting_input = true;
			detecting_input = true;
			
		}
		
	}
}
else
{
	hover = false;
}

if(detecting_input)
{
	hover = true;
	text = detect_text;
	if(keyboard_key != 0)
	{
		audio_play_sound(snd_menu_switch,1,0);
		global.key_left = keyboard_key;
		text = scr_keycheck(global.key_left);
		global.detecting_input = false;
		detecting_input = false;
	}
}