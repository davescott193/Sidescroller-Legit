
function scr_roomcode()
{
scr_fade_in();

if (!instance_exists(obj_Player_PlaceHolder))
{
	instance_create_layer(global.target_x, global.target_y, "Player", obj_Player_PlaceHolder)
}
if (!instance_exists(obj_Camera))
{
	instance_create_layer(global.target_x, global.target_y, "Player", obj_Camera)
}
}