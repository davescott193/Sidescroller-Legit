/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(!audio_is_playing(snd_HumanDeath))
{
	audio_play_sound(snd_HumanDeath, 1, 0);
}