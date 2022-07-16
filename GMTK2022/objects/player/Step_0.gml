// Movement Keys
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));

// Movement
if (hp > 0)
{
	x_move = (key_right - key_left) * move_speed;
	y_move = (key_down - key_up) * move_speed;
}
if x_move != 0
{
	last_x_move = x_move
}
if y_move != 0
{
	last_y_move = y_move
}


if (hp > 0)
{
	// Facing X Direction
	if (mouse_x < x) // Left
	{
		image_xscale = -3;
	} else // Right
	{
		image_xscale = 3;
	}

	// Facing Y Direction
	if (mouse_y < y) // Up
		{
		image_index = 1;
		obj_weapon.depth = 10;
	} else // Down 
	{
		image_index = 0;
		obj_weapon.depth = 1;
	}
}

// Collision with Enemy
if (place_meeting(x, y, obj_enemy)) and (i_frames = 0)
{	
	hp -= 1;
	if (hp > 0)
	{
		randHit = int64(random_range(1, 4))
		if (randHit = 1)
		{
			audio_play_sound(fx_hurt1, 9, false);
		} else if (randHit = 2) {
			audio_play_sound(fx_hurt2, 9, false);
		} else if (randHit = 3) {
			audio_play_sound(fx_hurt3, 9, false);
		}
	flash_alpha = 1;
	obj_health.shake_time = 10;
	i_frames = 45;
	} else { // DIE
		layer_set_visible("Interface", false);
		layer_set_visible("Black", true);
		audio_stop_all()
	}
} 
if (i_frames > 0)
{
	i_frames -= 1;
}
if (flash_alpha > 0)
{
	flash_alpha -= 0.05
}

// Actual Movement
x = x + x_move;
y = y + y_move;
//x = lerp(x + x_move, x + x_move + obj_weapon.push_x, 0.6);
//y = lerp(y + y_move, y + y_move + push_y, 0.6);