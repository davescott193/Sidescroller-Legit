#region Player Input
if(!instance_exists(obj_Fade))
{
	key_attackM = mouse_check_button_pressed(global.key_attackM);
	key_attackR = mouse_check_button_pressed(global.key_attackR);
	key_left = keyboard_check(global.key_left);
	key_right = keyboard_check(global.key_right);
	key_jump = keyboard_check_pressed(global.key_jump);
	key_jump_held = keyboard_check(global.key_jump); 
	key_crouch = keyboard_check(global.key_crouch);
	key_menu = keyboard_check_pressed(global.key_menu)
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	key_jump_held =0;
	key_crouch = 0;
	key_attackM = 0;
	key_attackR = 0;
	key_menu = 0;
}
#endregion

#region Horizontal Movement
//Movement
//will reduce walljumpdelay by 1 every frame until we hit 0
walljumpdelay = max(walljumpdelay-1, 0);

if(walljumpdelay == 0)//wont be able to move untill this value hits 0
{
	var dir = key_right - key_left;

	hsp += dir * accel;

	if (dir == 0)
	{
		if(hsp < 0)
		{
			hsp = min(0, hsp + decel);
		}
		else
		{
			hsp = max(0, hsp - decel);
		}
	}

	hsp = clamp(hsp, -max_hsp, max_hsp);

	//Wall Jump
	if(onwall != 0) and (!onground) and (key_jump)
	{
		walljumpdelay = walljumpdelay_max;
		//change hsp to be opposite wall, jump away from wall
		hsp = -onwall * hsp_wjump;
		//change vsp to jump differently than from the ground
		vsp = jumpspeed_wall;
		
		audio_play_sound(snd_Jump, 1, 0);
	}
}
#endregion

#region Vertical Movement
//Calculate vertical movement
var grav_final = grav;
var vsp_max_final = max_vsp;
if (onwall != 0) and (vsp > 0)
{
	grav_final = grav_wall;
	vsp_max_final = max_vsp_wall;
}

vsp += grav_final;
vsp = clamp(vsp, -vsp_max_final, vsp_max_final);

if(jumpbuffer > 0)
{
	jumpbuffer --;
	if(key_jump)
	{
		jumpbuffer = 0;
		vsp = jumpspeed;
		
		audio_play_sound(snd_Jump, 1, 0);
	}
}

if(vsp < 0) and (!key_jump_held)
{
	vsp = max(vsp, -3);
}

if (mouse_x >= x)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}


#endregion

#region Collision
// Moving platform collision
var _movingPlatform = instance_place(x, y + max(1, vsp), obj_Elevator);
if (_movingPlatform && bbox_bottom <= _movingPlatform.bbox_top) 
{

	// Pixel-perfect collisions
	if (vsp > 0) 
	{
		while (!place_meeting(x, y + sign(vsp), obj_Elevator)) 
		{
			y += sign(vsp);
		}
	
		vsp = 0;
	
	}
	// Add velocity
	hsp += _movingPlatform.moveX;
	vsp += _movingPlatform.moveY;
}

//water physics
if place_meeting (x+hsp, y, obj_Water)
{
max_hsp = 3;
max_vsp = 15;

}else
{
max_hsp = 5;
max_vsp = 20;
}
	
//Horizontal collision
if(place_meeting(x+hsp, y, obj_TileParent))
{
	var onepixel = sign(hsp);
	yplus = 0;
	while (place_meeting(x+hsp,y-yplus,obj_TileParent) && yplus <= abs(5*hsp)) yplus += 1;
	if place_meeting(x+hsp,y-yplus,obj_TileParent) 
	{
		while(!place_meeting(x+onepixel, y, obj_TileParent) )x += onepixel;
		{
		hsp = 0;
		}
	}
	else
	{
		y -= yplus
	}
}


//Commit to horizontal movement
x += hsp;

if(place_meeting(x, y+vsp, obj_TileParent))
{
	if(vsp == max_vsp)
	{
		scr_screenshake(8, 20);
		audio_play_sound(snd_Fall_hard, 1, 0);
	}
	
	
	var onepixel = sign(vsp);
	while(!place_meeting(x, y+onepixel, obj_TileParent) )y += onepixel;
	vsp = 0;
}

//Commit to vertical movement
y += vsp;





#endregion

#region Current Status/Aminations
//Calculate current status	

onground = place_meeting(x, y+groundbuffer, obj_TileParent);
if(onground) 
{
	jumpbuffer = 10;
}
onwall = place_meeting(x+1, y, obj_TileParent) - place_meeting(x-1, y, obj_TileParent);

image_speed	= 1;
if (hsp != 0)
{
	//image_xscale	= sign(hsp);
}

weaponhandleX = x - 6;
weaponhandleY = y - 9;

if(!onground)
{
	if(onwall != 0)
	{
		var side = bbox_left;
		if(onwall == 1) 
		{
			side = bbox_right;
		}
		dust++
		if (dust > 2 and vsp > 0)
		{
			with (instance_create_layer(side, bbox_top, "Player", obj_Dust))
			{
				other.dust = 0;
				hspeed = -other.onwall * 0.5;
				
			}
		}
		
		sprite_index = spriteWall;
		image_xscale = onwall;
	}
	else
	{
		sprite_index	= spriteJump;
		image_speed		= 0;
		image_index		= (vsp > 0);
	}
}
else
{
	if(hsp != 0)
	{
		sprite_index = spriteRun
		if(!audio_is_playing(snd_Step))
		{
			audio_play_sound(snd_Step, 1, 0);
		}
	}
	else
	{
		sprite_index = spriteIdle
		if(key_crouch)
		{
			sprite_index = spriteCrouch;
			weaponhandleY += 12;
		}
	}
	
}



if(key_menu)
{
	scr_fade_out(TitleMenu, 0, 0);
}

if(global.door_Camp == true)
{
	if(keyboard_check_pressed(global.key_testroom))
	{
		scr_fade_out(TestLevel, 95, 650);
	}
}

#endregion

#region Enemies
//Game Over
if (place_meeting(x, y, obj_EnemyContactKill))
{
	scr_death();
}
#endregion

#region Player Combat
if (key_attackR && equippedWeapon != noone)
{
	if (equippedWeapon.m_itemName == "Knife")
	{
		instance_destroy(equippedWeapon);
		EquipWeapon(obj_Pistol)
	}
	else if (equippedWeapon.m_itemName == "Pistol")
	{
		instance_destroy(equippedWeapon);
		EquipWeapon(obj_Knife)
	}
}

if (key_attackM && equippedWeapon != noone)
{
	if (equippedWeapon.m_itemName == "Knife")
	{
		equippedWeapon.Attack();
	}
	else if (equippedWeapon.m_itemName == "Pistol")
	{
		if (ammo > 0 && equippedWeapon.m_canAttack)
		{
			projdir = ClampWeaponAngle(point_direction(equippedWeapon.x,equippedWeapon.y, mouse_x, mouse_y));
    
			proj = instance_create_layer(equippedWeapon.x,equippedWeapon.y,layer,current_proj);
			proj.image_angle = projdir;
			proj.direction = projdir;
			proj.speed = 10;
			
			ammo -= 1;
			equippedWeapon.m_canAttack = false;
			equippedWeapon.Cooldown();
		}
	}
}

if (equippedWeapon != noone)
{
	equippedWeapon.image_xscale = image_xscale;
	equippedWeapon.image_yscale = image_yscale;
	
	if (image_xscale == -1)
	{
		weaponhandleX = x + 6;
		equippedWeapon.image_xscale = 1;
		equippedWeapon.image_yscale = -1;
	}
	
	equippedWeapon.x = weaponhandleX;
	equippedWeapon.y = weaponhandleY;
	
	
	equippedWeapon.image_angle = ClampWeaponAngle(point_direction(x, y, mouse_x, mouse_y));
}

#endregion

if(global.Boots = true)
{

max_hsp = 6;
max_vsp = 21;
}

