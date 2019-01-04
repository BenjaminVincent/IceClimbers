///@description Move oPlayer
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
jump = keyboard_check_pressed(ord("X"));

var x_input = (right - left) * acceleration;


// Vectors
var v2_x = 0;
var v2_y = 1;

// Horizontal
velocity[v2_x] = clamp(velocity[v2_x] + x_input, - max_velocity[v2_x], max_velocity[v2_x]);

if x_input == 0 {
	velocity[v2_x] = lerp(velocity[v2_x], 0, 0.2);	
}

// Gravity
velocity[v2_y] += grav;

// resolve
resolve_collision(collision_tile_map_id, 32, velocity);

var on_ground = tile_collision_point(collision_tile_map_id, [bbox_left, bbox_bottom], [bbox_right - 1, bbox_bottom]);

if on_ground {
	if jump {
		velocity[v2_y] = - jump_speed;	
	} 
} else {
		if jump && velocity[v2_y] <= -(jump_speed/3) {
			velocity[v2_y] = -(jump_speed/3);
		}
}