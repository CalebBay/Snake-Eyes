// Recoil
push_x = lengthdir_x(push, image_angle - 180);
push_y = lengthdir_y(push, image_angle - 180);
push -= 1;
push = clamp(push, 0, 10);

// Move with Player
x = lerp(player.x, player.x + push_x, 0.6);
y = lerp(player.y, player.y + push_y, 0.6) + 10;

// Point Towards Mouse (Gun)
if player.class = 3
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}

// Gun Direction
if (mouse_x < player.x)
{
	image_yscale = -4;
} else {
	image_yscale = 4;
}

// Shoot
if (mouse_check_button_released(mb_left) and player.ammo > 0)
{
	player.ammo -= 1;
	push = 10;
	var bullet = instance_create_layer(x, y, "Player", obj_bullet);
	bullet.image_angle = image_angle;
	bullet.direction = image_angle;
	bullet.speed = 10;
	bullet.depth = obj_weapon.depth + 1;
}

// Reload
if (keyboard_check(ord("R")))
{
	player.ammo = 5;
}
