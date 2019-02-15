parent_oSeal();

mid_room = room_width * .5;

sprite_index = sSealHit;
	
if x < mid_room {
	left = 1;
	right = 0;
} else if x >= mid_room {
	left = 0;
	right = 1;
}

var bottom_left_point = [bbox_left, bbox_bottom];
var bottom_right_point = [bbox_right, bbox_bottom];
var tile_bottom = tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point);
if ((x < 0 or x > room_width) and tile_bottom > 0 and tile_bottom < 3) {
	x = recall_x
	y = recall_y
	state = states.moveseal;
	if (recall_x < room_width/2) {
		left = 0;
		right = 1;
	} else {		
		left = 1;
		right = 0;
	}
}

	