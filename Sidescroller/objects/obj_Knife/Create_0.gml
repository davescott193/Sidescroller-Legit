/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
// Inherited values for: m_itemName, m_itemDesc, m_itemState, m_displayedProperties, m_damage, m_range, m_cooldown

m_itemName = "Knife";
m_itemDesc = "A versatile blade for use in combat or the kitchen. Not to be brought to gunfights.";
m_damage = 0.4;
m_range = 0;

m_displayedProperties = [["Name", m_itemName], ["Description", m_itemDesc], ["Damage", m_damage], ["Range", m_range]];
m_attackSound = snd_KnifeSwish1;
m_hitSound = snd_KnifeHit1;
m_canAttack = true;

function Attack()
{
	if (m_canAttack)
	{
		sprite_index = spr_KnifeCut;
		if (m_attackSound = snd_KnifeSwish1)
		{
			audio_play_sound(m_attackSound, 1, 0);
			m_attackSound = snd_KnifeSwish2;
		}
		else
		{
			audio_play_sound(m_attackSound, 1, 0);
			m_attackSound = snd_KnifeSwish1;
		}
	}
}
