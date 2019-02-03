
///@param tile_map_id
///@param point_arrays
var tile_map_id = argument[0];

// Found collision
var found = 0;

// point arrays
var v2_x = 0;
var v2_y = 1;

// Loop through the v2_x and v2_y
for (var i = 1; i < argument_count; i++) {
	// There are 4 arguments passed, arg[0] and arg[1] are tile_map_id and tile_map_id_2 respectivly
	// and the other 2 are the v2_x and v2_y
	var point_a = argument[1];
	var point_b = argument[2];
	var tile_map_col_a = tilemap_get_at_pixel(tile_map_id, point_a[v2_x], point_a[v2_y]);
	var tile_map_col_b = tilemap_get_at_pixel(tile_map_id, point_b[v2_x], point_b[v2_y]);
	// Found will return a 0 if there is no collision present, a 1 when left but no right, 2 when when right but no left, and 3 when both
		if tile_map_col_a and !tile_map_col_b {
			found = 1
	} else if !tile_map_col_a and tile_map_col_b {
			found = 2
	} else if tile_map_col_a and tile_map_col_b {
			found = 3
	}
}

return found;