// Update Health
image_index = player.hp - 1;

// Move with Camera
x = camera_get_view_x(view_camera[0]) + 16 + player.x_move;
y = camera_get_view_y(view_camera[0]) + 16 + player.y_move;