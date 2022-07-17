if (settings.enemies_remaining = 0) and (moved = false) and (settings.game_start = true)
{
	audio_play_sound(fx_start, 10, false);
	moved = true;
	x -= 64
} else if (settings.enemies_remaining > 0) and (moved = true) {
	moved = false;
	x += 64
}