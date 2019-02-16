parent_oSeal();

var bottom_left_point = [bbox_left, bbox_bottom];
var bottom_right_point = [bbox_right, bbox_bottom];
var tile_bottom = tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point);

//Reaches cliff
if (x < off_screen_left or x > off_screen_right) {
	resolve_cliff(collision_tile_map_id);
} else if tile_bottom < 3 {
	state = states.retreatseal;
}
