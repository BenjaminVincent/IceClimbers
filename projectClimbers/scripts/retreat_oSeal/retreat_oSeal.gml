parent_oSeal();

// deal with animation directions:
if right > 0 {
	sprite_index = sSealRetreatRight;
} else {
	sprite_index = sSealRetreatLeft;	
	}
if tile_bottom != 0 {
	max_velocity = [3, 10];
} else if tile_bottom == 0 {
	state = states.hitseal;
}
if (x < off_screen_left){
	// left side
	left = 0;
	right = 1;
	y = recall_y;
	state = states.buildseal;
} else if (x > off_screen_right-32){
	// right side
	left = 1;
	right = 0;
	y = recall_y;
	state = states.buildseal;
} 
