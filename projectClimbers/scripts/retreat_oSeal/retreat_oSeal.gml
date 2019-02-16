parent_oSeal();
var bottom_left_point = [bbox_left, bbox_bottom];
var bottom_right_point = [bbox_right, bbox_bottom];
var tile_bottom = tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point);

// right side
if (tile_bottom == 1) {
	left = 1;
	right = 0;
// left side
} else if (tile_bottom == 2) {
	left = 0;
	right = 1;
}

max_velocity = [3, 10];
if (x < off_screen_left or x > off_screen_right){
	x = recall_x;
	y = recall_y;
	if (recall_x < room_width/2) {
		left = 0;
		right = 1;
	} else {		
		left = 1;
		right = 0;
	}
	state = states.buildseal;
}
