///@param tile_map_id

var tile_map_id = argument0;


var v2_x = 0;
var v2_y = 1;


var bottom_left_point = [bbox_left, bbox_bottom];
var bottom_right_point = [bbox_right, bbox_bottom];
var tile_bottom = tile_collision_point_bottom_2d(tile_map_id,bottom_left_point,bottom_right_point);
	switch (tile_bottom) {
		case 3: 
		break;
		case 2:
			left = 0;
			right = 1;
		break;
		case 1:
			left = 1;
			right = 0;
		break;
		case 0:
		break;
	}
	
for (var i = 0; i < array_length_1d(global.seal_list); i += 1) {
	if (global.seal_list[i].state = states.hitseal and (x < 0 or x > room_width)) {
		global.seal_list[i].x = recall_x;
		global.seal_list[i].y = recall_y;
		global.seal_list[i].state = states.moveseal;
		
	}
}