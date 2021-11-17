/// @function scr_fadeout(target room)
/// @param {index} _targetroom
/// @param {integer} _target_x target x location for player object
/// @param {integer} _target_y target y location for player object
function scr_fade_out(_targetroom, _target_x, _target_y)
{
	global.target_x = _target_x;
	global.target_y = _target_y;
	
	if (!instance_exists(obj_Fade))
	{
		var fade = instance_create_layer(x, y, "Fade", obj_Fade);
		with (fade)
		{
			a = 0;
			fade_out = true;
			target_room = _targetroom;
		}
	}
}