/// @description Insert description here
// You can write your code in this editor

ammo += other.ammo_amount
audio_play_sound(snd_AmmoPickup, 1, 0)

instance_destroy(other)