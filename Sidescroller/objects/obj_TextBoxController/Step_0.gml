//If player walks near place text
if(place_meeting(x, y, obj_Player_PlaceHolder))
{
	text_fade = text_fade_max;
}
else
{
	text_fade = max(0, text_fade -1);
}