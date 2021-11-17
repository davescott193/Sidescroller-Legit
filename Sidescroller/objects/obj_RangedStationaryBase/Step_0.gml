/// @description Insert description here
// You can write your code in this editor

player = instance_find(obj_Player_PlaceHolder, 0);
if (player != noone && player.x > x)
{
	direction = 0
	image_xscale = 1;	
}
else if (player != noone && player.x < x)
{
	direction = 180
	image_xscale = -1;	
}