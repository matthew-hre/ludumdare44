if(timer >= 100) {
	instance_destroy();
	instance_create_depth(x, y, depth, obj_soul_anim);
}

x += choose(1, -1);

timer++;