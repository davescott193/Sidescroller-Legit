/// @description Insert description here
// You can write your code in this editor

//Calculate horizontal movement	
hsp = current_dir * hsp_max;

// calculate vertical movement
vsp += grav;
vsp = clamp(vsp, -vsp_max, vsp_max);

#region Collision
//Horizontal collision
if(place_meeting(x+hsp, y, obj_TileParent))
{
	var onepixel = sign(hsp);
	while(!place_meeting(x+onepixel, y, obj_TileParent) )x += onepixel;
	{
		hsp = 0;
		//Change direction
		current_dir *= -1; 
		image_xscale *= -1;
	}
}

if(place_meeting(x+hsp, y, obj_TileInvisParent))
{
	var onepixel = sign(hsp);
	while(!place_meeting(x+onepixel, y, obj_TileInvisParent) )x += onepixel;
	{
		hsp = 0;
		//Change direction
		current_dir *= -1; 
		image_xscale *= -1;
	}
}

if(place_meeting(x+hsp, y, obj_EnemyBase))
{
	var onepixel = sign(hsp);
	while(!place_meeting(x+onepixel, y, obj_EnemyBase) )x += onepixel;
	{
		hsp = 0;
		//Change direction
		current_dir *= -1; 
		image_xscale *= -1;
	}
}


//Commit to horizontal movement
x += hsp;

if(place_meeting(x, y+vsp, obj_TileParent))
{
	var onepixel = sign(vsp);
	while(!place_meeting(x, y+onepixel, obj_TileParent) )y += onepixel;
	vsp = 0;
}

//Commit to vertical movement
y += vsp;
#endregion


#region Attack

if (instance_find(obj_Player_PlaceHolder, 0) != noone) 
{
	player = instance_find(obj_Player_PlaceHolder, 0)
	if (point_distance(x,y,player.x,player.y) < detect_distance)
	{
		if (x == player.x) {
			image_xscale = 1
		} else if (x > player.x) {
			current_dir = -1
			image_xscale = -1
		} else {
			current_dir = 1
			image_xscale = 1
		}
		sprite_index = sprAttack
	} else {
		sprite_index = sprWalk		
	}
	
	
}

if (place_meeting(x,y,obj_Player_PlaceHolder))
{
	if (canAttack)
	{
		player = instance_find(obj_Player_PlaceHolder,0)
		player.playerHealth -= attackDamage
		if (player.playerHealth <= 0 )
			scr_death()
		canAttack = false
		alarm_set(0,attackResetTimer)
	}	
}


#endregion