if(x != player.x) {
	x = ceil(lerp(x, player.x, 0.6));
}

if(y != player.y) {
	y = ceil(lerp(y, player.y, 0.6));
}

camera_set_view_pos(view_camera[0], x-120, y-64);