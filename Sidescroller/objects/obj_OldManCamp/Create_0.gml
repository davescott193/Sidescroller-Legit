// Inherit the parent event
event_inherited();
if(global.door_Camp == true) and (global.door_Prologue == true)
{
text = "Thank you for rescuing me player as a reward \nmy doors will help you on your mission \nuse them as you please"
}

if(global.door_Camp == true) and (global.door_Prologue == true) and (global.door_TheBeach == true)
{
text = "It seams another door has shown it self to you \nperhaps it is a sign"
}

if(global.door_Camp == true) and (global.door_Prologue == true) and (global.door_TheBeach == true)  and (global.door_Highrise == true)
{
text = "You have defeated yet another abomination \nthe world seems a little more peacefull"
}

if(global.door_Camp == true) and (global.door_Prologue == true) and (global.door_TheBeach == true)  and (global.door_Highrise == true)  and (global.door_Caverns == true)
{
text = "Thank you player for defeating that monstrosity perhaps i can rest now"
}

if(global.door_Camp == true) and (global.door_Prologue == true) and (global.door_TheBeach == true)  and (global.door_Highrise == true)  and (global.door_Caverns == true) and (global.cheat = true)
{
text = "All doors are now unlocked have fun"
}

text_y = 70;