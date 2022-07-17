function explode()
{
	var explosion = instance_create_layer(x, y, "Environment_Solid_T", obj_explosion);
	explosion.x -= 75
	explosion.y -= 75
	explosion.image_xscale = 2.5;
	explosion.image_yscale = 2.5
	explosion.depth = -100
	player.screen_shake = 15;
}

// Collision Between Bullet and Enemy
if (place_meeting(x, y, obj_enemy)) or 
	(place_meeting(x, y, obj_fence)) or 
	(place_meeting(x, y, obj_fence_left)) or 
	(place_meeting(x, y, obj_fence_right))
{
	if (player.weapon = 4)
	{
		explode()
	}
	if (player.weapon = 6)
	{
		explode()
		instance_destroy();
	}
	if (player.weapon != 6)
	{
		instance_destroy();
	}
}

// Check if Off-Screen
if (x < camera_get_view_x(view_camera[0])) or 
	(x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])) or
	(y < camera_get_view_y(view_camera[0])) or 
	(y > camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))
{
	if (player.weapon != 6)
	{
		if (player.weapon != 3)
		{
			instance_destroy();
		}
	}
}

// Slow Down Grenade
if (player.weapon = 6)
{
	if (speed > 0)
	{
		speed -= 1
	}
}

// Grenade Timer
if (player.weapon = 6)
{
	if (grenade_timer > 0)
	{
		grenade_timer -= 1
	} else {
		explode()
		instance_destroy();
	}
}
