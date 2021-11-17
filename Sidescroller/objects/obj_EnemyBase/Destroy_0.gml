/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, layer, obj_PlayerDeath)

var lootDrop = choose(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);
if(lootDrop == 1)
{
    if (player != noone && !global.Boots)
    {
    instance_create_layer(x,y+1,"Player", obj_Boots)
    }    
}
else if(lootDrop == 10)
{
    if (player != noone && !global.Helmet)
    {
    instance_create_layer(x,y+1,"Player", obj_Helmet)
    }
}
else if(lootDrop == 20)
{
    if (player != noone && !global.Chest)
    {
    instance_create_layer(x,y+1,"Player", obj_Chest)
    }
}

