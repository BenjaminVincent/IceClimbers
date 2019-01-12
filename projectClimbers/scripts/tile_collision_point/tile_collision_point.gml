///@param tile_map_id
///@param point_arrays
var tile_map_id = argument[0];
var tile_map_id_2 = argument[1];

// Found collision
var found = false;

// point arrays
var v2_x = 0;
var v2_y = 1;

// Loop through the v2_x and v2_y
for (var i = 2; i < argument_count; i++) {
	// There are 3 arguments passed, arg[0] is the tile_map_id
	// and the other 2 are the v2_x and v2_y
	var point = argument[i];
	var tile_map_col = tilemap_get_at_pixel(tile_map_id, point[v2_x], point[v2_y]);
	var tile_map_break = tilemap_get_at_pixel(tile_map_id_2, point[v2_x], point[v2_y]);
	//show_debug_message(point);
	// Found will return a 0 if there is no collision present, and 1 when there is.
	found = found || tile_map_col || tile_map_break;
}

return found;