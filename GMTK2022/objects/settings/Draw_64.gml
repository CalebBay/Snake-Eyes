draw_set_font(fnt_old_pixel)
draw_set_color(c_black)
x_pos = 1060
y_pos = 110
if (settings.game_start = true) and (player.hp > 0)
{
	draw_text_ext_transformed(x_pos - 2, y_pos, "Enemies Remaining: " + string(settings.enemies_remaining), 10, 1000, 0.5, 0.5, 0)
	draw_text_ext_transformed(x_pos + 2, y_pos, "Enemies Remaining: " + string(settings.enemies_remaining), 10, 1000, 0.5, 0.5, 0)
	draw_text_ext_transformed(x_pos, y_pos - 2, "Enemies Remaining: " + string(settings.enemies_remaining), 10, 1000, 0.5, 0.5, 0)
	draw_text_ext_transformed(x_pos, y_pos + 2, "Enemies Remaining: " + string(settings.enemies_remaining), 10, 1000, 0.5, 0.5, 0)
	draw_set_color(c_white)
	draw_text_ext_transformed(x_pos, y_pos, "Enemies Remaining: " + string(settings.enemies_remaining), 10, 1000, 0.5, 0.5, 0)
}