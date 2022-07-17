// TEMP REMOVE LATER
if keyboard_check(ord("1"))
{
	player.weapon = 1;

}
if keyboard_check(ord("2"))
{
	player.weapon = 2;
}
if keyboard_check(ord("3"))
{
	player.weapon = 3;
}
if keyboard_check(ord("4"))
{
	player.weapon = 4;
}

// Gun Type
image_index = player.weapon - 1;

// Gun Recoil
if (player.weapon = 1)
{
	recoil = 1;
}
if (player.weapon = 2)
{
	recoil = 0.5;
}
if (player.weapon = 3)
{
	recoil = 0.5;
}
if (player.weapon = 4)
{
	recoil = 5;
}

// Recoil
push_x = lengthdir_x(push, image_angle - 180);
push_y = lengthdir_y(push, image_angle - 180);
push -= 1 * recoil;
push = clamp(push, 0, 100);

// Move with Player
x = lerp(player.x, player.x + push_x, 0.6);
y = lerp(player.y, player.y + push_y, 0.6) + 10;

// Point Towards Mouse (Gun)
if (player.hp > 0)
{
	if player.class = 3
	{
		image_angle = point_direction(x, y, mouse_x, mouse_y);
		if player.last_y_move = 5
		{
		//image_angle = clamp(push, 180, 360);
		}
	}
}

// Gun Direction
if (player.hp > 0)
{
	if (mouse_x < player.x)
	{
		image_yscale = -4;
	} else {
		image_yscale = 4;
	}
}

// Shoot (Class 3)
if (mouse_check_button(mb_left) and player.weapon = 3 and player.ammo > 0) or ((mouse_check_button_pressed(mb_left) and (player.ammo > 0) and (player.class = 3)) and (player.hp > 0) and player.weapon != 3)
{
	if (player.weapon = 1) // Pistol
	{		
		randAttack = int64(random_range(1, 4))
		if (randAttack = 1)
		{
			audio_play_sound(fx_pistol1, 9, false);
		} else if (randAttack = 2) {
			audio_play_sound(fx_pistol2, 9, false);
		} else if (randAttack = 3) {
			audio_play_sound(fx_pistol3, 9, false);
		}	
	}
	if (player.weapon = 2) // Squirt Gun
	{
		randAttack = int64(random_range(1, 4))
		if (randAttack = 1)
		{
			audio_play_sound(fx_water1, 9, false);
		} else if (randAttack = 2) {
			audio_play_sound(fx_water2, 9, false);
		} else if (randAttack = 3) {
			audio_play_sound(fx_water3, 9, false);
		}	
	}
	if (player.weapon = 3) // Flamethrower
	{
		if hold_delay = 0
		{		
			randAttack = int64(random_range(1, 4))
			if (randAttack = 1)
			{
				audio_play_sound(fx_fire1, 9, false);
			} else if (randAttack = 2) {
				audio_play_sound(fx_fire2, 9, false);
			} else if (randAttack = 3) {
				audio_play_sound(fx_fire3, 9, false);
			}	
		}
	}
	if (player.weapon = 4) // Bazooka
	{
		randAttack = int64(random_range(1, 4))
		if (randAttack = 1)
		{
			audio_play_sound(fx_fire1, 9, false);
		} else if (randAttack = 2) {
			audio_play_sound(fx_fire2, 9, false);
		} else if (randAttack = 3) {
			audio_play_sound(fx_fire3, 9, false);
		}	
	}
	if ((player.weapon = 3) and (hold_delay = 0)) or (player.weapon != 3)
	{
		player.ammo -= 1;
		push = 10 * recoil;
	}
	if (player.weapon = 3) and (hold_delay = 0)
	{
		var bullet = instance_create_layer(x, y, "Player", obj_fire);
	} else if (player.weapon != 3) {
		var bullet = instance_create_layer(x, y, "Player", obj_bullet);
	}
	if ((player.weapon = 3) and (hold_delay = 0)) or (player.weapon != 3)
	{
		if (player.weapon != 3)
		{
			bullet.image_angle = image_angle;
		}	
		bullet.direction = image_angle;
		bullet.depth = obj_weapon.depth + 1;
	}
	if (player.weapon = 1)
	{
		bullet.image_xscale = 1;
		bullet.image_yscale = 1;
		bullet.speed = 75;
	} else if (player.weapon = 2) {
		bullet.image_xscale = 1;
		bullet.image_yscale = 1;
		bullet.speed = 20;
	} else if (player.weapon = 3) and (hold_delay = 0) {
		bullet.image_xscale = 2;
		bullet.image_yscale = 2;
		bullet.speed = 10;
	} else if (player.weapon = 4) {
		bullet.image_xscale = 3;
		bullet.image_yscale = 3;
		bullet.speed = 40;
	}
	if (hold_delay = 0)
	{
		hold_delay = 10;
	} else
	{
		hold_delay -= 1;
	}
} else if ((mouse_check_button_pressed(mb_left)) and (player.ammo = 0) and (player.hp > 0)) or ((player.weapon = 3) and (mouse_check_button_released(mb_left)) and (player.ammo = 0) and (player.hp > 0))
{
	player.ammo -= 1;
	push = 10 * recoil;
	obj_dice.direction = point_direction(x, y, mouse_x, mouse_y);
	obj_dice.speed = int64(random_range(40, 48));
	obj_dice.x = x
	obj_dice.y = y
	audio_play_sound(fx_roll, 9, false);
	obj_dice.visible = true;
	spin = true;
}
if (spin)
{
	obj_dice.image_angle = obj_dice.image_angle - (4 * obj_dice.speed * random_range(0, 1));
	if (obj_dice.speed > 0)
	{
		obj_dice.speed -= 2.5;
	} else
	{
		obj_dice.speed = 0;
		spin = false;
		after_spin_delay = 20;
	}
}
if (after_spin_delay > 1)
{
	after_spin_delay -= 1
} else if (after_spin_delay = 1) {
	player.weapon = player.weapons[int64(random_range(1, 6))];
	if (player.weapon = 1)
	{
		player.ammo = 8;
	} else if (player.weapon = 2) {
		player.ammo = 6;
	} else if (player.weapon = 3) {
		player.ammo = 8;
	} else if (player.weapon = 4) {
		player.ammo = 1;
	}
	after_spin_delay -= 1;
	flash_alpha = 1;
	obj_dice.visible = false;
	obj_weapon_frame.flash_alpha = 1;
}
if (mouse_check_button_released(mb_left))
{	
	hold_delay = 0;
}

// New Gun
if (flash_alpha > 0)
{
	flash_alpha -= 0.05;
}
