/// @description Camera
// x_camera = x - 640;

y_camera = y - 400;
if (screen_shake > 0)
{
	if (screen_shake % 3 = 1)
	{
		camera_set_view_pos(view_camera[0], x_camera, y_camera)
	} else {
		camera_set_view_pos(view_camera[0], x_camera + 3 * int64(random_range(-10, 10)),
		y_camera + int64(random_range(-10, 10)))
	}
	screen_shake -= 1;
} else {
	camera_set_view_pos(view_camera[0], x_camera, y_camera)
}
