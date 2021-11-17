/// @description Insert description here
// You can write your code in this editor

m_itemName = "Pistol";
m_itemDesc = "A classic six-shooter from at least three world wars ago. Never goes out of style.";
m_canAttack = true;

function Cooldown()
{
	alarm_set(0, 30);
}