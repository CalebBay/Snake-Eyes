randomize()
window_set_caption("Snake Eyes");
var bgm = audio_play_sound(bgm_ambient, 10, true);
audio_sound_gain(bgm, 0.3, 0);
difficulty = 1;
enemies_remaining = 0;
grenades = 0;
obj_weapon.visible = false;
obj_weapon_frame.visible = false;
obj_frame.visible = false;
obj_health.visible = false;
game_start = false;