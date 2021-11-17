if (global.checkpoint_id = id)
{
	image_index = 1;
}
else
{
	image_index = 0;
	if (place_meeting(x, y, obj_Player_PlaceHolder))
	{
		scr_screenshake(5, 20);
		
		audio_play_sound(snd_Checkpoint, 1, 0);
		
		global.checkpoint_room = room;
		global.checkpoint_x = x;
		global.checkpoint_y = y;
		global.checkpoint_id = id;
		
		scr_savegame();
		
		pop = true;
		scale = 2;
		
	}
}

//Animate
if(!pop)
{
	if(scale > scale_max) or (scale < 1)
	{
		grow *= -1;
	}
	scale += grow * grow_speed;
}
else 
{
	if (scale > 1)
	{
		scale -= 0.03;
	}
	else
	{
		scale = 1;
		pop = false;
	}
}

image_xscale = scale;
image_yscale = scale;

//Text
if(place_meeting(x, y, obj_Player_PlaceHolder))
{
	text_fade = text_fade_max;
}
else
{
	text_fade = max(0, text_fade -1);
}
