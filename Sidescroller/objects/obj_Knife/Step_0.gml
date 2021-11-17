/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_KnifeCut)
{
	if (image_index > image_number - 1)
		{
			sprite_index = spr_Knife;
		}
	if (m_canAttack)
	{
		enemy = instance_place(x + m_range, y, obj_EnemyBase);
		if (enemy != noone)
		{
			enemy.enemyHealth -= m_damage;
			audio_play_sound(m_hitSound, 1, 0);
			if (enemy.enemyHealth <= 0)
			{
				instance_destroy(enemy);
			}
		}
	
		projectile = instance_place(x + m_range, y, obj_ProjectileBase);
		if (projectile != noone)
		{
			audio_play_sound(m_hitSound, 1, 0);
			projectile.speed *= -1;
		}
		m_canAttack = false;
		alarm_set(0, 5);
	}
}