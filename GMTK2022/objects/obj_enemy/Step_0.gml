if (hp <= 0)
{
	coin_loop = int64(random_range(0, 3))
	if (coin_loop > 0)
	{
		do 
		{
		var coin = instance_create_layer(x, y, "Environment_Solid_U", obj_coin);
		coin.image_xscale = 2;
		coin.image_yscale = 2;
		coin.x -= int64(random_range(-30, 30))
		coin.y -= int64(random_range(-30, 30))
		coin_loop -= 1
		}
		until (coin_loop = 0)
	}
	settings.enemies_remaining -= 1
	instance_destroy();
}

// Deal Damage to Enemy, Destroy Bullet.
function deal_damage()
{
	alerted = true;
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
        hp -= int64(random_range(1, 5))
    }
	if (player.weapon = 4)
    {
        hp -= int64(random_range(100, 111))
    }
	if (player.weapon = 5)
    {
        hp -= int64(random_range(3, 7))
    }
	if (player.weapon = 6)
    {
        hp -= int64(random_range(45, 58))
    }
}

if (place_meeting(x, y, obj_bullet) and player.weapon != 6) or (place_meeting(x, y, obj_fire)) or (place_meeting(x, y, obj_explosion))
{
	deal_damage()
}

// Check If Player is In Bounds
if (player.x > x - 300) and (player.x < x + 300) and
	(player.y > y - 300) and (player.y < y + 300)
{
	alerted = true;
}

if (alerted = true)
{
	image_angle = point_direction(x, y, player.x, player.y)
	if (player.x > x)
	{
		x += 3.5
	}

	if (player.x < x)
	{
		x -= 3.5
	}
	
	if (player.y > y)
	{
		y += 3.5
	}

	if (player.y < y)
	{
		y -= 3.5
	}
}


