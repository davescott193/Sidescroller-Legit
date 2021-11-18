/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

speedval = 5;
patrol_length = 200;
enemyHealth = 150;

shoot_speed = 100;
setProjectile(obj_peaProjectile);

function ShootHorizontal() 
{	
	pea = instance_create_layer(x, y + 20, layer, obj_peaProjectile)
	if (instance_find(obj_Player_PlaceHolder, 0) != noone) 
	{		
		player = instance_find(obj_Player_PlaceHolder, 0)
		if (player.x > x)
		{
			pea.direction = direction;
			
		}
		else
		{
			pea.direction = -180;
		}
	}
}



alarm[0] = shoot_speed;