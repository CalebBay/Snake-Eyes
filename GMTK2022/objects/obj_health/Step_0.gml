// Update Health
image_index = player.hp - 1;

// Move with Camera
x = camera_get_view_x(view_camera[0]) + 16;
y = camera_get_view_y(view_camera[0]) + 16 + player.y_move;

// Flash When Low
if (player.hp = 1) and (flashing = false)
{
	flashing = true;
	flashAlpha = 1;
}

if (flashAlpha > 0) and (player.hp = 1)
{
	flashAlpha -= 0.025 * fadeDirection;
}

if (flashAlpha = 0) and (player.hp = 1)
{
	fadeDirection *= -1;
	flashAlpha = 0.025
}

if (flashAlpha = 1) and (player.hp = 1)
{
	fadeDirection *= -1;
}

// Shake When Hit
if (shake_time > 0)
{
	obj_health.x -= ((6 - player.hp) / 1.75) * int64(random_range(-4, 5))
	obj_health.y -= ((6 - player.hp) / 1.75) * int64(random_range(-4, 5))
	shake_time -= 1
}

if keyboard_check(ord("1"))
{
	if player.hp < 6
	{
		player.hp += 1;
	}
}