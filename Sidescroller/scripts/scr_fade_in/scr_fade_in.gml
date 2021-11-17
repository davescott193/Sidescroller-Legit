// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fade_in()
{
	if (!instance_exists(obj_Fade))
	{
		instance_create_layer(x, y, "Fade", obj_Fade);
	}
}