if(x == 112) {
	obj_game_manager.card1 = noone;
} else if(x == 384) {
	obj_game_manager.card2 = noone;
} else {
	obj_game_manager.card3 = noone;	
}
moving_down = true;
instance_create_depth(x, y, depth, obj_card);
