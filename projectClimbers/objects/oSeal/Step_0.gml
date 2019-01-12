/// @description

var x_input = (right - left) * acceleration;


// Vectors
/*
v2_x is the 0th index in velocity for the x direction
v2_y is the 1st index in velocity for the y direction
*/
var v2_x = 0;
var v2_y = 1;

// Horizontal
//maintains the x direction between our min and max values
velocity[v2_x] = clamp(velocity[v2_x] + x_input, - max_velocity[v2_x], max_velocity[v2_x]);

// not moving

if x_input == 0 {
	// Stop moving when not pressing
	velocity[v2_x] = lerp(velocity[v2_x], 0, 0.2);
	
}

// Gravity
velocity[v2_y] += grav;

// resolve
resolve_collision(collision_tile_map_id, break_tile_map_id, 32, velocity);

// check for no tile under (GOING LEFT)
if x_input < 0 && place_meeting(x - 3, y, oCollide) {
	left = 0;
	right = 1;
// (GOING RIGHT)
} else if x_input > 0 && place_meeting(x + 3, y, oCollide) {
	left = 1;
	right = 0;
}

// Collides with oPlayer

if place_meeting(x, y, oPlayer) {
	with(oPlayer) y = 1099;
	health--;
}

if place_meeting(x, y, oHammer) {
	sprite_index = sSealHit;
	alarm[0] = room_speed;
	
	if oSeal.x > initial_x {
		left = 1;
		right = 0;
	} else if oSeal.x < initial_x {
		left = 0;
		right = 1;
	}
	
}



