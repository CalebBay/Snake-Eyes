// Resize
if (keyboard_check(vk_f11)) or ((keyboard_check(vk_alt)) and (keyboard_check(vk_enter))) 
{
	window_set_fullscreen(!window_get_fullscreen())
}