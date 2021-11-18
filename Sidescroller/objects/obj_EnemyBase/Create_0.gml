player = instance_find(obj_Player_PlaceHolder, all);
speedval = 0;
patrol_length = 100;
enemyHealth = 100;



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