/// @description Insert description here
// You can write your code in this editor
if !global.Helmet =true
{
global.Helmet = true
instance_create_layer(x, y, "Player", obj_HelmetUI)
playerHealthMax += 2
playerHealth = playerHealthMax
}
instance_destroy(other)