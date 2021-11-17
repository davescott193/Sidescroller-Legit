if(fade_out)
{
	if(a < 1)
	{
		a += fade_out_rate;
	}
	else
	{
		a = 1;
		room_goto(target_room);
	}
	
}
else
{
	if (a > 0)
	{
		a -= fade_in_rate;
	}
	else
	{
		a = 0;
		instance_destroy();
	}
}