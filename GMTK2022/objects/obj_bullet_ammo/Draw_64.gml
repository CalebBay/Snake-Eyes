draw_sprite_stretched(spr_bullet, image_index, 97, 680, 13 * 3, 6 * 3)
draw_set_font(fnt_old_pixel)
draw_set_color(c_black)
x_pos = 100
y_pos = 630
text_show = player.ammo
if (player.ammo = -1)
{
	text_show = 0
}
draw_text_ext_transformed(x_pos - 3, y_pos, text_show, 10, 1000, 1, 1, 0)
draw_text_ext_transformed(x_pos + 3, y_pos, text_show, 10, 1000, 1, 1, 0)
draw_text_ext_transformed(x_pos, y_pos - 3, text_show, 10, 1000, 1, 1, 0)
draw_text_ext_transformed(x_pos, y_pos + 3, text_show, 10, 1000, 1, 1, 0)
draw_set_color(c_white)
draw_text_ext_transformed(x_pos, y_pos, text_show, 10, 1000, 1, 1, 0)