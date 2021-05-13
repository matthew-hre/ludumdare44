draw_self();
if(obj_room_manager.pause) return;
if(state == 2) return;
if(type == 0) {
	if(!place_meeting(x+0.5, y-15.5, obj_empty)) {
		draw_sprite(spr_sight, 0, x+0.5, y-15.5);	
		if(place_meeting(x+0.5, y-15.5, obj_player)) {
			obj_room_manager.player_spotted = true;	
		}
		
		if(!place_meeting(x+0.5, y-31.5, obj_empty)) {
			draw_sprite(spr_sight, 0, x+0.5, y-31.5);
			if(place_meeting(x+0.5, y-31.5, obj_player)) {
				obj_room_manager.player_spotted = true;	
			}
			if(!place_meeting(x+0.5, y-47.5, obj_empty)) {
				draw_sprite(spr_sight, 0, x+0.5, y-47.5);
				if(place_meeting(x+0.5, y-47.5, obj_player)) {
					obj_room_manager.player_spotted = true;	
				}
			}
		}
	}
}

if(type == 1) {
	if(!place_meeting(x+0.5, y+16.5, obj_empty)) {
		draw_sprite(spr_sight, 0, x+0.5, y+16.5);	
		if(place_meeting(x+0.5, y+16.5, obj_player)) {
			obj_room_manager.player_spotted = true;	
		}
		if(!place_meeting(x+0.5, y+32.5, obj_empty)) {
			draw_sprite(spr_sight, 0, x+0.5, y+32.5);
			if(place_meeting(x+0.5, y+32.5, obj_player)) {
				obj_room_manager.player_spotted = true;	
			}
			if(!place_meeting(x+0.5, y+48.5, obj_empty)) {
				draw_sprite(spr_sight, 0, x+0.5, y+48.5);
				if(place_meeting(x+0.5, y+48.5, obj_player)) {
					obj_room_manager.player_spotted = true;	
				}
			}
		}
	}
}

if(type == 2) {
	if(!place_meeting(x-15.5, y+0.5, obj_empty+0.5)) {
		draw_sprite(spr_sight, 0, x-15.5, y+0.5);	
		if(place_meeting(x-15.5, y+0.5, obj_player)) {
			obj_room_manager.player_spotted = true;	
		}
		if(!place_meeting(x-31.5, y+0.5, obj_empty+0.5)) {
			draw_sprite(spr_sight, 0, x-31.5, y+0.5);
			if(place_meeting(x-31.5, y+0.5, obj_player)) {
				obj_room_manager.player_spotted = true;	
			}
			if(!place_meeting(x-47.5, y+0.5, obj_empty+0.5)) {
				draw_sprite(spr_sight, 0, x-47.5, y+0.5);
				if(place_meeting(x-47.5, y+0.5, obj_player)) {
					obj_room_manager.player_spotted = true;	
				}
			}
		}
	}
}

if(type == 3) {
	if(!place_meeting(x+16.5, y+0.5, obj_empty+0.5)) {
		draw_sprite(spr_sight, 0, x+16.5, y+0.5);	
		if(place_meeting(x+16.5, y+0.5, obj_player)) {
			obj_room_manager.player_spotted = true;	
		}
		if(!place_meeting(x+32.5, y+0.5, obj_empty+0.5)) {
			draw_sprite(spr_sight, 0, x+32.5, y+0.5);
			if(place_meeting(x+32.5, y+0.5, obj_player)) {
				obj_room_manager.player_spotted = true;	
			}
			if(!place_meeting(x+48.5, y+0.5, obj_empty+0.5)) {
				draw_sprite(spr_sight, 0, x+48.5, y+0.5);
				if(place_meeting(x+48.5, y+0.5, obj_player)) {
					obj_room_manager.player_spotted = true;	
				}
			}
		}
	}
}

if(type == 4) {
	if(!place_meeting(x+0.5, y+16.5, obj_empty)) {
		draw_sprite(spr_sight, 0, x+0.5, y+16.5);	
		if(place_meeting(x+0.5, y+16.5, obj_player)) {
			obj_room_manager.player_spotted = true;	
		}
	}
	if(!place_meeting(x+0.5, y-15.5, obj_empty)) {
		draw_sprite(spr_sight, 0, x+0.5, y-15.5);
		if(place_meeting(x+0.5, y-15.5, obj_player)) {
			obj_room_manager.player_spotted = true;	
		}
	}
}

if(type == 5) {
	if(!place_meeting(x+16.5, y+0.5, obj_empty)) {
		draw_sprite(spr_sight, 0, x+16.5, y+0.5);	
		if(place_meeting(x+16.5, y+0.5, obj_player)) {
			obj_room_manager.player_spotted = true;	
		}
	}
	if(!place_meeting(x-15.5, y+0.5, obj_empty)) {
		draw_sprite(spr_sight, 0, x-15.5, y+0.5);
		if(place_meeting(x-15.5, y+0.5, obj_player)) {
			obj_room_manager.player_spotted = true;	
		}
	}
}