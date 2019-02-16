parent_oSeal();
fallen = false
sprite_index = sSeal;
max_velocity = [1, 10];

//Reaches cliff
if (x < off_screen_left-32 or x > off_screen_right) {
	resolve_cliff(collision_tile_map_id);
} else if tile_bottom < 3 {
	var temp = left;
	left = right;
	right = temp;
	state = states.retreatseal;
}
//if tripped
if (tile_bottom_a = 0 and tile_bottom_b = 2) or (tile_bottom_a = 1 and tile_bottom_b = 0){
	state = states.trippedseal
}