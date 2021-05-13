player = instance_nearest(x, y, obj_player);

x = player.x;
y = player.y;

camera_set_view_pos(view_camera[0], x-120, y-64);