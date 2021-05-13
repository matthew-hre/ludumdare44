var key = noone;
if(x == 112) {
	key = ord("1");	
} else if(x == 384) {
	key = ord("2");
} else {
	key = ord("3");	
}

if(moving_down == true) {
	y = lerp(y, 512, 0.6);
	if(y == 512) {
		instance_destroy();	
	}
}

if(moving) {
	timer++;
	if(timer >= 20) {
		moving = false;
		timer = 0;
	}
	if(timer/2 == ceil(timer/2)) {
		x += 3;	
	} else {
		x -= 3;	
	}
	return;
}

if(timed) {
	timer++;
	if(timer >= 10) {
		timed = false;	
		timer = 0;
	}
	return;
}

if(keyboard_check_pressed(vk_enter)) {
	room_goto(rm_gameplay);	
	audio_play_sound(snd_error, 1, 0);
}

if(keyboard_check_pressed(key)) {
	if(image_index == 0) {
		//RRGB
		if(obj_game_manager.red_soul >= 2 && obj_game_manager.green_soul >= 1 && obj_game_manager.blue_soul >= 1) {
			obj_game_manager.red_soul -= 2;
			obj_game_manager.green_soul--;
			obj_game_manager.blue_soul--;
			scr_buy_card();
			obj_game_manager.keep++;
			timed = true;
		} else {
			moving = true;
			audio_play_sound(snd_error, 1, 0);
		}
	} else if(image_index == 1) {
		//BBBPu
		if(obj_game_manager.blue_soul >= 3 && obj_game_manager.purple_soul >= 1) {
			obj_game_manager.purple_soul--;
			obj_game_manager.blue_soul -= 3;
			scr_buy_card();
			obj_game_manager.keep++;
			timed = true;
		} else {
			moving = true;
			audio_play_sound(snd_error, 1, 0);
		}
	} else if(image_index == 2) {
		//PuBlBlP
		if(obj_game_manager.black_soul >= 2 && obj_game_manager.purple_soul >= 1 && obj_game_manager.pink_soul >= 1) {
			obj_game_manager.purple_soul--;
			obj_game_manager.pink_soul--;
			obj_game_manager.black_soul -= 2;
			scr_buy_card();
			obj_game_manager.keep++;
			timed = true;
		} else {
			moving = true;
			audio_play_sound(snd_error, 1, 0);
		}
	} else {
		//GGPuPu
		if(obj_game_manager.green_soul >= 2 && obj_game_manager.purple_soul >= 2) {
			obj_game_manager.purple_soul -= 2;
			obj_game_manager.green_soul -= 2;
			scr_buy_card();
			obj_game_manager.keep++;
			timed = true;
		} else {
			audio_play_sound(snd_error, 1, 0);
			moving = true;
		}
	}
}