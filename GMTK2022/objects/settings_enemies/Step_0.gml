if (spawn > 0)
{
	obj_fence_big_left.y = highest - 80
	obj_fence_big_right.y = highest - 80
	x_spawn = int64(random_range(20, 1260))
	y_spawn = int64(random_range(lowest, highest))
	var enemy = instance_create_layer(x, y, "Enemy", obj_enemy);
	enemy.x = x_spawn
	enemy.y = y_spawn
	enemy.image_xscale = 2
	enemy.image_yscale = 2
	spawn -= 1
}
if (player.y < highest - 130)
{
	settings.difficulty += 1
	audio_play_sound(fx_hurt1, 10, false);
	obj_fence_big.y = highest - 80
	lowest = highest - 700
	highest -= 2200 + (100 * factor)
	factor *= 1.15
	spawn = max_spawn * factor
}
