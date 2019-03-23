parent_oSeal();
fallen = false
sprite_index = sSealRight;
max_velocity = [1, 10];

//Reaches cliff
if (x < off_screen_left or x > off_screen_right-32) {
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

// deal with animation direct:
if right > 0 {
	sprite_index = sSealRight;
} else {
	sprite_index = sSealLeft;	
}