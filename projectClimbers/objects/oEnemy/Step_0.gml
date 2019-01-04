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
resolve_collision(collision_tile_map_id, 32, velocity);

// check for no tile under (GOING LEFT)
if x_input < 0 && place_meeting(x - 3, y, oCollide) {
	left = 0;
	right = 1;
} else if x_input > 0 && place_meeting(x + 3, y, oCollide) {
	left = 1;
	right = 0;
}


// vertical
//var on_ground 