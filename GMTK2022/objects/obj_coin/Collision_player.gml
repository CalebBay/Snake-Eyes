player.coins += 1;
randCoin = int64(random_range(1, 4))
if (randCoin = 1)
{
	audio_play_sound(fx_coin1, 9, false);
} else if (randCoin = 2) {
	audio_play_sound(fx_coin2, 9, false);
} else if (randCoin = 3) {
	audio_play_sound(fx_coin3, 9, false);
}	
instance_destroy();