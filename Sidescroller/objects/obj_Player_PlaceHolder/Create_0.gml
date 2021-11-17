//Speeds
hsp = 0;
vsp = 0;
grav = 0.4;
max_hsp = 5;
max_vsp = 20;

//Momentum
accel = 0.5;
decel = 0.3;

//Jump
onground = false;
groundbuffer = 3;
jumpspeed = -10;
jumpbuffer = 10;

//Sprite switching
spriteRun = spr_PlayerRun;
spriteIdle = spr_PlayerIdle;
spriteJump = spr_PlayerJump;
spriteWall = spr_PlayerWall;
spriteCrouch = spr_PlayerCrouch;

//onWall
onwall = 0;
dust = 0;
grav_wall = 0.1;
hsp_wjump = 5;
max_vsp_wall = 4;
jumpspeed_wall = -10;

//player loss of control after wall jump
walljumpdelay = 0;
walljumpdelay_max = 16;


playerHealth = 5
playerHealthMax = playerHealth


//Combat stats
current_proj = obj_proj1
equippedWeapon = noone;
weaponhandleX = x - 6;
weaponhandleY = y - 9;
maxAmmo = 10;
ammo = maxAmmo;

//Player tutorial boxes
tLeft = global.key_left
tRight = global.key_right

function EquipWeapon(_weapon)
{
	equippedWeapon = instance_find(_weapon, all);
	
	if (equippedWeapon == noone)
	{
		equippedWeapon = instance_create_layer(weaponhandleX, weaponhandleY, layer, _weapon);
		equippedWeapon.depth = -5;
		// equippedWeapon.image_xscale = 0.8;
		// equippedWeapon.image_yscale = 0.8;
	}
}

EquipWeapon(obj_Pistol);

if(instance_exists(obj_Player_PlaceHolder))
{
	instance_create_layer(x, y, "Player", obj_HP)
	instance_create_layer(x, y, "Player", obj_ArmorFrame)
}

if(instance_exists(obj_Player_PlaceHolder))
{
	instance_create_layer(x, y, "Player", obj_AmmoCount)
}

function ClampWeaponAngle(_angle)
{
	if (_angle > 70 && _angle <= 90)
	{
		_angle = 70;
	}
	else if (_angle < 110 && _angle > 90)
	{
		_angle = 110;
	}
	
	if (_angle < 330 && _angle >= 270)
	{
		_angle = 330;
	}
	else if (_angle > 210 && _angle < 270)
	{
		_angle = 210;
	}
	
	return _angle;
}

function ClampWeaponAngle(_angle)
{
	if (_angle > 70 && _angle <= 90)
	{
		_angle = 70;
	}
	else if (_angle < 110 && _angle > 90)
	{
		_angle = 110;
	}
	
	if (_angle < 330 && _angle >= 270)
	{
		_angle = 330;
	}
	else if (_angle > 210 && _angle < 270)
	{
		_angle = 210;
	}
	
	return _angle;
}

global.Helmet = false
global.Chest = false
global.Boots = false