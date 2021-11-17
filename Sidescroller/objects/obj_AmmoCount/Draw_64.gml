/// @description Insert description here
// You can write your code in this editor

draw_self()

if (instance_find(obj_Player_PlaceHolder, 0) != noone)
{
	playah = instance_find(obj_Player_PlaceHolder, 0)
	ammoCount = string(playah.ammo)
	draw_text(x+40,y+4,ammoCount)
}