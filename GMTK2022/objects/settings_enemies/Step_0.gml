if (spawn > 0)
{
	x_spawn = int64(random_range(0, 1280))
	y_spawn = int64(random_range(lowest, highest))
	var enemy = instance_create_layer(x, y, "Enemy", obj_enemy);
	enemy.x = x_spawn
	enemy.y = y_spawn
	enemy.image_xscale = 2
	enemy.image_yscale = 2
	spawn -= 1
}
