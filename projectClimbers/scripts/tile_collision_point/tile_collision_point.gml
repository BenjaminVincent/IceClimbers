///@param tile_map_id
///@param point_arrays
var tile_map_id = argument[0];

// Found collision
var found = false;

// point arrays
var v2_x = 0;
var v2_y = 1;

// Loop through the v2_x and v2_y
for (var i = 1; i < argument_count; i++) {
	// There are 3 arguments passed, arg[0] is the tile_map_id
	// and the other 2 are the v2_x and v2_y
	var point = argument[i];
	var tile_map_col = tilemap_get_at_pixel(tile_map_id, point[v2_x], point[v2_y]);
	// Found will return a 0 if there is no collision present, and 1 when there is.
	found = found || tile_map_col;
}

return found;