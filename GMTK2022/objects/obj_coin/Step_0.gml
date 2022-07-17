if (life > 0)
{
	life -= 1
	if (life <= 150)
	{
		image_alpha = life / 150
	}
} else {
	instance_destroy();
}