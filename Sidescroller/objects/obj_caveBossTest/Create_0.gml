enemyHealth = 10;
speedval = 5;
patrol_length = 200;
shoot_speed = 5

burstTimer = 30
burstDelay = 60

burstTimerCount = burstTimer
burstDelayCount = burstDelay

shoot_speed = 100;


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