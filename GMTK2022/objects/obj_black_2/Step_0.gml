x = camera_get_view_x(view_camera[0]) + player.x_move
y = camera_get_view_y(view_camera[0]) + player.y_move
if (settings.game_start = true)
{
	if (image_alpha > 0)
	{
		image_alpha -= 0.01
	}
}