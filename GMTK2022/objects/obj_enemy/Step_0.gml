if (hp <= 0)
{
	instance_destroy();
}

// Deal Damage to Enemy, Destroy Bullet.
function deal_damage()
{
    hp_show = 45
    if (player.weapon = 1)
    {
        hp -= int64(random_range(23, 29))
    }
    if (player.weapon = 2)
    {
        hp -= 1
    }
    if (player.weapon = 3)
    {
        hp -= int64(random_range(8, 13))
    }
	if (player.weapon = 4)
    {
        hp -= int64(random_range(100, 111))
    }
	
}

if (place_meeting(x, y, obj_bullet)) or (place_meeting(x, y, obj_fire))
{
	show_debug_message(player.weapon)
	deal_damage()
}

// Check If Player is In Bounds
if (player.x > x - 300) and (player.x < x + 300) and
	(player.y > y - 300) and (player.y < y + 300)
{
	speed = 3.5;
	image_angle = point_direction(x, y, player.x, player.y)
	direction = image_angle
}