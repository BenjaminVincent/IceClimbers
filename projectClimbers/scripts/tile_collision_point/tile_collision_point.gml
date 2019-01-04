///@param tile_map_id
///@param point_arrays
var tile_map_id = argument[0]

// Found collision
var found = false;

// point arrays
var v2_x = 0;
var v2_y = 1;

// Loop and check for a tile
for (var i = 1; i < argument_count; i++) {
	var point = argument[i];
	found = found || tilemap_get_at_pixel(tile_map_id, point[v2_x], point[v2_y]);
}

return found;