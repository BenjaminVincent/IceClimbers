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
// check if hitting wall (GOING LEFT)
if right_hit {
	left = 1;
	right = 0;
	right_hit = false;
// (GOING RIGHT)
} else if left_hit {
	left = 0;
	right = 1;
	left_hit = false;
}

//Reaches cliff
resolve_cliff(collision_tile_map_id);


// Collides with oPlayer



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



