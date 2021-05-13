if(obj_room_manager.pause) return;

if(bite_timer != 0) {
	bite_timer++;
	if(bite_timer >= bite_limit) {
		bite_timer = 0;
	}
	return;
}

if(timer >= timer_limit) {
	if(keyboard_check(vk_up)) {
		if(!place_meeting(x, y-16, obj_empty)) {
			y -= 16;
			timer = 0;
		}
	} else if(keyboard_check(vk_down)) {
		if(!place_meeting(x, y+16, obj_empty)) {
			y += 16;
			timer = 0;
		}
	} else if(keyboard_check(vk_left)) {
		if(!place_meeting(x-16, y, obj_empty)) {
			x -= 16;
			timer = 0;
		}
	} else if(keyboard_check(vk_right)) {
		if(!place_meeting(x+16, y, obj_empty)) {
			x += 16;
			timer = 0;
		}
	} else {
		timer = timer_limit-1;	
	}
}

var inst = instance_nearest(x, y, obj_ai);
if(place_meeting(x, y, inst)) {
	if(inst.image_index == 0) {
		obj_game_manager.red_soul++;              // uwu pwogrammews
	} else if(inst.image_index == 1) {
		obj_game_manager.blue_soul++;
	} else if(inst.image_index == 2) {
		obj_game_manager.green_soul++;	
	} else if(inst.image_index == 3) {
		obj_game_manager.pink_soul++;	
	} else if(inst.image_index == 4) {
		obj_game_manager.purple_soul++;	
	} else if(inst.image_index == 5){
		obj_game_manager.black_soul++;	
	}
	timer = 0;
	bite_timer = 1;
	audio_play_sound(snd_bite, 1, 0);
	instance_destroy(inst);
}

if(obj_room_manager.player_spotted) {
	timer = 0;
	room_goto(rm_death);
	return;
}

timer++;