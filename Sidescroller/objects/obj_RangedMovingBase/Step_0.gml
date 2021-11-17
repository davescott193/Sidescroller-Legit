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
sprite_index = spr_Rifleman
#endregion

