/// @description Insert description here
// You can write your code in this editor

event_inherited();

hsp = 0;
vsp = 0;
max_distance = 750;
max_angle = 23;
speedval = 5;
patrol_length = 200;

shoot_speed = 100;


function TrackShoot()
{
	if (player != noone && point_distance(x,y+32,player.x,player.y) < 720)
	{
	//check if player is within shooting angle ie 45 degrees
		dirToPlayer = point_direction(x,y+32,player.x,player.y)
		if ( abs(angle_difference(direction, dirToPlayer) < 45) )
		{

				projec = instance_create_layer(x,y+22,layer,_projectile)
				if (projec != noone)
					projec.direction = dirToPlayer
		
		
		}
	}
}

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


