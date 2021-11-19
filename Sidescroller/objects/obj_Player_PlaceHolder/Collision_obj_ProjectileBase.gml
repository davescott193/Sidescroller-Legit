/// @description Insert description here
// You can write your code in this editor

playerHealth -= 1
if playerHealth <= 0
{
	scr_death();
}

audio_play_sound(snd_PlayerHit, 1, 0)
	


instance_destroy(other)