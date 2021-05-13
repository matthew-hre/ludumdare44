image_speed = 0;
moving = false;
timer = 0;
moving_down = false;
randomize();
var num = irandom(3);
image_index = num;
timed = false;
if(obj_game_manager.card1 != noone && x == 112) {
	image_index = obj_game_manager.card1[1];
	return;
}
if(obj_game_manager.card2 != noone && x == 384) {
	image_index = obj_game_manager.card2[1];
	return;
}
if(obj_game_manager.card3 != noone && x == 656) {
	image_index = obj_game_manager.card3[1];
	return;
}

if(obj_game_manager.card1 == noone && x == 112) {
	obj_game_manager.card1[0] = obj_keep_card;
	obj_game_manager.card1[1] = image_index;
	return;
}
if(obj_game_manager.card2 == noone && x == 384) {
	obj_game_manager.card2[0] = obj_keep_card;
	obj_game_manager.card2[1] = image_index;
	return;
}
if(obj_game_manager.card3 == noone && x == 656) {
	obj_game_manager.card3[0] = obj_keep_card;
	obj_game_manager.card3[1] = image_index;
	return;
}