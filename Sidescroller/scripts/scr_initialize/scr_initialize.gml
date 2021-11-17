// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_initialize()
{
	global.checkpoint_room = TestLevel;
	global.checkpoint_x = 30;
	global.checkpoint_y = 675;
	global.checkpoint_id = noone;
	global.target_x = 30;
	global.target_y = 675;
	global.key_right = (ord("D"));
	global.key_left = (ord("A"));
	global.key_jump = vk_space;
	global.key_menu = vk_escape;
	global.key_attackM = mb_left;
	global.key_attackR = mb_right;
	global.key_crouch = vk_shift;
	global.detecting_input = false;
	global.Helmet = false;
	global.Chest = false;
	global.Boots = false;
	global.key_fullscreen = vk_enter;
	global.key_testroom = vk_tab;
}