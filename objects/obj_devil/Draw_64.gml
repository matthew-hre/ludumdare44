draw_set_font(fnt_m3x6);

for(var i = 0; i < 6; i++) {
	draw_sprite(spr_souls, i, 4, (i*12)+6);
	if(i == 0) {
		draw_text(16, (i*12), string(obj_game_manager.red_soul));
	} else if(i == 1) {
		draw_text(16, (i*12), string(obj_game_manager.blue_soul));
	} else if(i == 2) {
		draw_text(16, (i*12), string(obj_game_manager.green_soul));	
	} else if(i == 3) {
		draw_text(16, (i*12), string(obj_game_manager.pink_soul));	
	} else if(i == 4) {
		draw_text(16, (i*12), string(obj_game_manager.purple_soul));	
	} else if(i == 5){
		draw_text(16, (i*12), string(obj_game_manager.black_soul));	
	}
}

for(var i = 0; i < 3; i++) {
	draw_sprite(spr_prop_count, i, 240-12, (i*12)+6);
	if(i == 0) {
		draw_text(240-18, (i*12), string(obj_game_manager.keep));
	} else if(i == 1) {
		draw_text(240-18, (i*12), string(obj_game_manager.tower));
	} else if(i == 2) {
		draw_text(240-18, (i*12), string(obj_game_manager.dungeon));	
	}
}