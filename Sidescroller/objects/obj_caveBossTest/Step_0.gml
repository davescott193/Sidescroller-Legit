event_inherited();


if (player != noone && point_distance(x,y+32,player.x,player.y) < 720)
{
	//check if player is within shooting angle ie 45 degrees
	dirToPlayer = point_direction(x,y+32,player.x,player.y)
	if ( abs(angle_difference(direction, dirToPlayer) < 45) )
	{
		if (burstTimerCount >= 0)
		{
			if (burstTimerCount mod 5 == 0)
				projec = instance_create_layer(x,y+22,layer,obj_EnemyBullet)
				if (projec != noone)
					projec.direction = dirToPlayer
			burstTimerCount -= 1
		}


		if (burstTimerCount <= 0) {
			burstDelayCount	-= 1
			if (burstDelayCount <= 0) {
				burstTimerCount = burstTimer
				burstDelayCount = burstDelay
			}
		}
	}
}


