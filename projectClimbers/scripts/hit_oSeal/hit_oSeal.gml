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
	