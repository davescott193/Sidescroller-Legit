/// @description Insert description here
// You can write your code in this editor

event_inherited();

hsp = 0;
vsp = 0;
hsp_max = 1;
vsp_max = 10;

current_dir = 1;
grav = 0.4;

projSpeed = 5

#region Find player

#endregion


function setProjectile(proj)
{
	_projectile = proj	
	
}

function ShootTarget()
{
	if (instance_find(obj_Player_PlaceHolder,0) != noone)
	{
		player = instance_find(obj_Player_PlaceHolder,0)
		projdir = point_direction(x,y, player.x, player.y)
		newProj = instance_create_layer(x,y,layer,_projectile)
		newProj.direction = projdir
		newProj.speed = projSpeed
	}	

}