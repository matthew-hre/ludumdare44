randomize();
if(obj_room_manager.pause) return;
if(moving) {
	x = lerp(x, new_x, 0.6);
	y = lerp(y, new_y, 0.6);
	
	if(x == new_x && y == new_y) {
		moving = false;	
	}
}

if(state == 0) {
	//stay still
} else if(state == 1 && timer >= timer_max && !moving) {
	//move
	dir = choose(1, -1);
	dir2 = choose(1, -1);
	
	if(dir == -1) {
		if(!place_meeting(x + 16*dir2, y, obj_empty) && !place_meeting(x + 16*dir2, y, obj_ai)) {
			new_x = x+16*dir2;
			moving = true;
		}
	} else {
		if(!place_meeting(x, y + 16*dir2, obj_empty) && !place_meeting(x, y + 16*dir2, obj_ai)) {
			new_y = y+16*dir2;
			moving = true;
		}
	}
	
}

if(timer >= timer_max) {
	state = choose(0, 0, 1, 1, 1);
	timer = 0;
}

timer++;