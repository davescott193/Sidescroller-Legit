/// @description Insert description here
// You can write your code in this editor

event_inherited();

speedval = 5;
patrol_length = 200;

shoot_speed = 100;

function setProjectile(proj)
{
	_projectile = proj
}

function ShootHorizontal() 
{	
	projec = instance_create_layer(x ,y,layer , _projectile)
	if (instance_find(obj_Player_PlaceHolder, 0) != noone) 
	{		
		player = instance_find(obj_Player_PlaceHolder, 0)
		if (player.x > x) {
			
			direction = 0 
		} else { 
			
			direction = 180 
		}			
		projec.direction = direction
	}
}


