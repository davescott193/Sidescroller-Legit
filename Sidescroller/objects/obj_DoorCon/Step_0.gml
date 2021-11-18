if(global.door_Prologue == true)
{
	instance_activate_object(DoorPrologue)
	instance_activate_object(DoorBeach)
}

if(global.door_Camp == true)
{
	instance_activate_object(DoorCamp)
}

if(global.door_Caverns == true)
{
	instance_activate_object(DoorCamp4)
}

if(global.door_TheBeach == true)
{
	instance_activate_object(DoorHighrise)
	instance_activate_object(DoorCamp2)
}

if(global.door_Highrise == true)
{
	instance_activate_object(DoorCaverns)
	instance_activate_object(DoorCamp3)
}
