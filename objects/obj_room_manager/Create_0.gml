pause = true;
while(!instance_exists(obj_ai)) {
	scr_ungen_level();
	scr_level_generate(16, 16, 16, 16, 16*16-(16), obj_floor, obj_game_manager.enemy_chance);
}
display_set_gui_size(240, 128);
audio_play_sound(snd_forest, 1, true);

ptimer = 100;

timer = 0;
timer_limit = 2000;
player_spotted = false;