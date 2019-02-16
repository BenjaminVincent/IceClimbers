parent_oSeal();

mid_room = room_width * .5;

sprite_index = sSealHit;
	
if x < mid_room {
	left = 1;
	right = 0;
} else if x >= mid_room {
	left = 0;
	right = 1;
}

if (x < 0 or x > room_width) {
	x = recall_x
	y = recall_y
	state = states.moveseal;
	if (recall_x < room_width/2) {
		left = 0;
		right = 1;
	} else {		
		left = 1;
		right = 0;
	}
}

	