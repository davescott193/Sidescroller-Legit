/// @description Insert description here
// You can write your code in this editor

if (m_damagingEnemies)
{
	other.enemyHealth -= 35;
	if (other.enemyHealth <= 0)
	{
		instance_destroy(other);
	}
	instance_destroy();
}