if (place_meeting(x, y, obj_enemy))
{
	show_debug_message(direction)
	if (flipped = false)
	{
		flipped = true;
		direction -= 180
		speed /= 1.25
	}
	show_debug_message(direction)
}