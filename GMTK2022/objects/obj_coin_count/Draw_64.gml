if (settings.game_start = true)
{
	draw_sprite_stretched(spr_coin_count, image_index, 16, 100, 57, 60)
	draw_set_font(fnt_old_pixel)
	draw_set_color(c_black)
	x_pos = 85
	y_pos = 110
	draw_text_ext_transformed(x_pos - 3, y_pos, player.coins, 10, 1000, 1, 1, 0)
	draw_text_ext_transformed(x_pos + 3, y_pos, player.coins, 10, 1000, 1, 1, 0)
	draw_text_ext_transformed(x_pos, y_pos - 3, player.coins, 10, 1000, 1, 1, 0)
	draw_text_ext_transformed(x_pos, y_pos + 3, player.coins, 10, 1000, 1, 1, 0)
	draw_set_color(c_white)
	draw_text_ext_transformed(x_pos, y_pos, player.coins, 10, 1000, 1, 1, 0)
}