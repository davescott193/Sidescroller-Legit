/// @desc scr_screenshake(magnatude, frames)
/// @param {integer} Magnitude sets the strength of the shake in pixels
/// @param {integer} Frames set the length of shake
function scr_screenshake(magnitude, frames)
{
		with(obj_Camera)
		{
			if (magnitude > shake_remain)
			{
				shake_magnitude = magnitude;
				shake_remain = magnitude;
				shake_length = frames;
			}
		}
}