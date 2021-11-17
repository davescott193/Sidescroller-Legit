/// @description Insert description here
// You can write your code in this editor

//inherit Create Event from parent obj_EnemyBase
event_inherited()

//_projectile is a reference to the object for the 
function setProjectile(proj) {
	_projectile = proj
}

function ShootProjectile(_projectile) 
{
	proj = instance_create_layer(x,y,layer,_projectile)
	if (instance_find(obj_Player_PlaceHolder, 0) != noone) 
	{
		player = instance_find(obj_Player_PlaceHolder, 0)
		if (player.x > x) direction = 0
		else direction = 180
	}
	proj.direction = direction
}