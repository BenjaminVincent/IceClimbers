//Enter hit state if collides with hammer
for (var i = 0; i < array_length_1d(global.seal_list); i += 1) {
	if place_meeting(x, y, global.seal_list[i]) {
		// NOTE: This needs to be generalized when
		//		 we have more enemies.
		global.seal_list[i].state = states.hitseal;
	}
}