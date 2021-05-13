randomize();
if(obj_game_manager.card1 != noone && x == 112) {
	var inst = instance_create_depth(x, y, depth, obj_game_manager.card1[0]);
	inst.image_index = obj_game_manager.card1[1];
	instance_destroy();
}
if(obj_game_manager.card2 != noone && x == 384) {
	var inst = instance_create_depth(x, y, depth, obj_game_manager.card2[0]);
	inst.image_index = obj_game_manager.card2[1];
	instance_destroy();
}
if(obj_game_manager.card3 != noone && x == 656) {
	var inst = instance_create_depth(x, y, depth, obj_game_manager.card3[0]);	
	inst.image_index = obj_game_manager.card3[1];
	instance_destroy();
}
if(obj_game_manager.card1 == noone && x == 112) {
	instance_create_depth(x, y, depth, choose(obj_keep_card, obj_tower_card, obj_dungeon_card));
}
if(obj_game_manager.card2 == noone && x == 384) {
	instance_create_depth(x, y, depth, choose(obj_keep_card, obj_tower_card, obj_dungeon_card));
}
if(obj_game_manager.card3 == noone && x == 656) {
	instance_create_depth(x, y, depth, choose(obj_keep_card, obj_tower_card, obj_dungeon_card));
}
audio_play_sound(snd_buy, 1, 0);
instance_destroy(); //112, 384, 656