parent_oSeal();
sprite_index = sSealBuild;
max_velocity = [1, 10];
var direct = (right - left)
var x_target = tilemap_get_cell_x_at_pixel(collision_tile_map_id, x + (direct*32), y);
var x_target2 = tilemap_get_cell_x_at_pixel(collision_tile_map_id, x + (direct*64), y);
var y_target = tilemap_get_cell_y_at_pixel(collision_tile_map_id, x, y + 32);
var tilemap_data = tilemap_get(collision_tile_map_id,x_target,y_target);
var index = tile_get_index(tilemap_data);
if index == 0 {
	//"fix" tile
	var data = tile_set_index(tilemap_data, 2);
	tilemap_set(collision_tile_map_id, data, x_target, y_target);
	var tilemap_data = tilemap_get(collision_tile_map_id,x_target2,y_target);
	var index = tile_get_index(tilemap_data);
		//if the next tile is also missing fix that too
		if index == 0 {
			var data = tile_set_index(tilemap_data, 2);
			tilemap_set(collision_tile_map_id, data, x_target2, y_target);
		}
	state = states.moveseal;
}
if (tile_bottom_a = 0 and tile_bottom_b = 2) or (tile_bottom_a = 1 and tile_bottom_b = 0){
	state = states.trippedseal
}