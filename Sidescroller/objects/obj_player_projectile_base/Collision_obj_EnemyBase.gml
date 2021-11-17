/// @description Insert description here
// You can write your code in this editor

other.enemyHealth -= m_damage

if (other.enemyHealth <= 0) 
{
	instance_destroy(other)
}

instance_destroy()