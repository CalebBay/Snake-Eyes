draw_self();

if (hp_show > 0)
{
	draw_healthbar
	(
	x - 40,
	y - 40,
	x + sprite_width,
	y - 30,
	100 * (hp / max_hp),
	c_black,
	c_red,
	c_green,
	0,
	true,
	true
	);
	hp_show -= 1;
}
