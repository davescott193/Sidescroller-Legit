/// @description Insert description here
// You can write your code in this editor

currentMusic = snd_MenuMusic

function PlayBackroundMusic(musicToPlay)
{
	if (currentMusic != musicToPlay) {
		audio_pause_sound(currentMusic)
		currentMusic = musicToPlay
		audio_play_sound(currentMusic, 1, 1)
	}
	
}