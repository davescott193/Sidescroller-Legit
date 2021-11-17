/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
// Inherited values for: m_health, m_maxHealth, m_moveSpeed, m_jumpHeight
// Inherited implementation for: Die(), TakeDamage(_amount), Heal(_amount)

player = instance_find(obj_Player_PlaceHolder, all);
speedval = 0;
patrol_length = 100;
og_x = x;
og_y = y;
enemyHealth = 3;



enum enemyType
{
	Regular,
	StationaryStaticRanged,
	StationaryDynamicRanged,
	Grunt,
	FastGrunt,
	ProjectileShooters,
	Boss
}

m_enemyType = enemyType.Regular;

function Patrol()
{
	// Move back and forth between locations until player is spotted
	x+=speedval;
	if (abs(og_x - x) >= patrol_length) {
		speedval = -speedval;
	}
}

function Wait()
{
	// Stop patrolling
}

function Attack(_target)
{
	// Attack the target (probably the player)
	
}

	