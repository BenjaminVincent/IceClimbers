///@description Move oPlayer
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
jump = keyboard_check_pressed(ord("X"));
attack = keyboard_check_pressed(ord("Z"));

var x_input = (right - left) * acceleration;


// Vectors
var v2_x = 0;
var v2_y = 1;

// Horizontal
velocity[v2_x] = clamp(velocity[v2_x] + x_input, - max_velocity[v2_x], max_velocity[v2_x]);

// When we release our directional button, gradually slow the v2_x by 20% until velocity = 0 (Not moving)
if x_input == 0 {
	velocity[v2_x] = lerp(velocity[v2_x], 0, 0.2);	
}

// Gravity
velocity[v2_y] += grav;

  

// resolve
resolve_collision(collision_tile_map_id, break_tile_map_id, 32, velocity);
//resolve_collision(break_tile_map_id, 32, velocity);


// In the on_ground variable we are checking the bottom left and bottom right corners of our sprite
var on_ground = tile_collision_point(collision_tile_map_id, break_tile_map_id, [bbox_left, bbox_bottom], [bbox_right - 1, bbox_bottom]);
if on_ground {
	if jump {
		velocity[v2_y] = - jump_speed;
		sprite_index = sPlayerJump
	}
} else {
		if jump && velocity[v2_y] <= -(jump_speed/3) {
			velocity[v2_y] = -(jump_speed/3);
		}
}

if on_ground && !jump {
	sprite_index = sPlayer;	
}


/*
	Setting direction for player
	updating sprite
*/

// moving right
if x_input > 0 {
	dir = "right";
	image_xscale = 1;
	
// moving left
} else if x_input < 0 {
	dir = "left"; 
	image_xscale = -1;	
}
if can_attack == true {
	if dir == "right" && attack {
		can_attack = false;
		alarm[1] = room_speed;
		instance_create_depth(x + 32, y, -1, oHammer);
		alarm[0] = 30;
	}

	if dir == "left" && attack {
		can_attack = false;
		alarm[1] = room_speed;
		instance_create_depth(x - 32, y, -1, oHammer);
		alarm[0] = 30;
	}
}