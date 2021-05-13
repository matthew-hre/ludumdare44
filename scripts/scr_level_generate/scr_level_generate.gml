///@arg width
///@arg height
///@arg x
///@arg y
///@arg steps
///@arg object
///@arg enemychanceLowIsMore
randomize();

var placed_player = false;

var g = ds_grid_create(argument0, argument1);
var steps = argument4;
var controller_x = choose(0, ds_grid_width(g));
var controller_y = choose(0, ds_grid_height(g))
var start_x = controller_x;
var start_y = controller_y;

for(var i = -10; i < ds_grid_width(g)+10; i++) {
	for(var j = -10; j < ds_grid_height(g)+10; j++) {
		g[# i, j] = 0;
	}
}

repeat(steps) {
	var dir = choose(0, 1); //1 is up, 0 is left
	if(dir == 1) {
		if(g[# controller_x, controller_y] == undefined) {
			g[# controller_x, controller_y] = 0;
		} else {
			g[# controller_x, controller_y]++;
		}
		dir = choose(-1, 1);
		if(controller_y + dir <= argument1-1 && controller_y + dir >= 1) {
			controller_y += dir;
		}
	} else {
		if(g[# controller_x, controller_y] == undefined) {
			g[# controller_x, controller_y] = 0;
		} else {
			g[# controller_x, controller_y]++;
		}
		dir = choose(-1, 1);
		if(controller_x + dir <= argument0-1 && controller_x + dir >= 1) {
			controller_x += dir;
		}
	}
}

for(var i = 0; i < ds_grid_width(g); i++) {
	for(var j = ds_grid_height(g); j > 0; j--) {
		 if(g[# i, j] >= 1) {
			instance_create_depth((i*argument2), (j*argument3), -100, argument5);	
			if(!placed_player) {
				instance_create_depth((i*argument2)+7.5, (j*argument3)+7.5, -101, obj_player);
				placed_player = true;	
			} else if(irandom(argument6) == 0) {
				instance_create_depth((i*argument2)+7.5, (j*argument3)+7.5, -101, obj_ai);
			}
		} else {
			instance_create_depth((i*argument2), (j*argument3), -100, obj_empty);	
		}
	}
}

i = 0;
for(i = 0; i < ds_grid_width(g)+2; i++) {
	instance_create_depth((i*argument2)-16, argument3-16, -100, obj_empty);
}

i = 0;
for(i = 0; i < ds_grid_width(g)+2; i++) {
	instance_create_depth((i*argument2)-32, (argument3*16)+(ds_grid_height(g)*16), -100, obj_empty);
}

i = 0;
for(i = 0; i < ds_grid_height(g)+1; i++) {
	instance_create_depth(argument2+(ds_grid_width(g)*16)-16, (i*argument3), -100, obj_empty);
}

i = 0;
for(i = 0; i < ds_grid_height(g)+1; i++) {
	instance_create_depth(argument2-32, (i*argument3), -100, obj_empty);
}

return [start_x, start_y];