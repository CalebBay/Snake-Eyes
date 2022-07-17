if (settings.enemies_remaining = 0) and (moved = false)
{
	moved = true;
	x += 64
} else if (settings.enemies_remaining > 0) and (moved = true) {
	moved = false;
	x -= 64
}