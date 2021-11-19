/// @description Insert description here
// You can write your code in this editor

event_inherited();

hsp = 0;
vsp = 0;
max_distance = 720;
max_angle = 45;
speedval = 5;
patrol_length = 200;

shoot_speed = 100;


function setProjectile(proj)
{
	_projectile = proj
}

function setShootSound(sound)
{
	_sound = sound	
}

function TrackShoot()
{
	if (player != noone && point_distance(x,y+32,player.x,player.y) < max_distance)
	{
	//check if player is within shooting angle ie 45 degrees
		dirToPlayer = point_direction(x,y+32,player.x,player.y)
		if ( abs(angle_difference(direction, dirToPlayer) < max_angle) )
		{

				projec = instance_create_layer(x,y+22,layer,_projectile)
				audio_play_sound(_sound, 1, 0)
				if (projec != noone)
					projec.direction = dirToPlayer
		
		}
	}
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


