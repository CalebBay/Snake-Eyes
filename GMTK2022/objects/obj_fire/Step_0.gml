// Collision Between Bullet and Enemy
if (place_meeting(x, y, obj_enemy))
{
	instance_destroy();
}

// Check if Off-Screen
if (x < camera_get_view_x(view_camera[0])) or 
	(x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])) or
	(y < camera_get_view_y(view_camera[0])) or 
	(y > camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))
{
	instance_destroy();
}
