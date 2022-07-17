settings.game_start = true;
player.ammo = 8;
obj_weapon.visible = true;
obj_weapon_frame.visible = true;
obj_frame.visible = true;
obj_health.visible = true;
obj_fence_big.y -= 10000
window_set_cursor(cr_none);
cursor_sprite = spr_crosshair;
settings_enemies.spawn = settings_enemies.max_spawn;
settings_enemies.highest = player.y - 2000
settings_enemies.lowest = player.y - 400;
audio_stop_all()
audio_play_sound(fx_start, 10, false);
var bgm = audio_play_sound(bgm_desert, 10, true);
audio_sound_gain(bgm, 0.2, 0);
instance_destroy();