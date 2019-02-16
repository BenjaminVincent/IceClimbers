parent_oSeal();

sprite_index = sSealRetreat;
if tile_bottom != 0 {
	max_velocity = [3, 10];
} else if tile_bottom == 0 {
	state = states.hitseal;
}
if (x < off_screen_left - 32){
	// left side
	left = 0;
	right = 1;
	y = recall_y;
	state = states.buildseal;
} else if (x > off_screen_right){
	// right side
	left = 1;
	right = 0;
	y = recall_y;
	state = states.buildseal;
} 
