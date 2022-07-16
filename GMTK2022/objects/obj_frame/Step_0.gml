// Move with Camera
x = camera_get_view_x(view_camera[0]) + 16 + player.x_move;
y = camera_get_view_y(view_camera[0]) + 104 + player.y_move;
obj_weapon_frame.x = camera_get_view_x(view_camera[0]) + 32 + player.x_move + obj_weapon_frame.moveover;
obj_weapon_frame.y = camera_get_view_y(view_camera[0]) + 140 + player.y_move;

if (obj_weapon.spin)
{
	rand_spin_x = int64(random_range(-4, 5));
	rand_spin_y = int64(random_range(-4, 5));
	x -= rand_spin_x
	y -= rand_spin_y
	obj_weapon_frame.x -= rand_spin_x
	obj_weapon_frame.y -= rand_spin_y
}