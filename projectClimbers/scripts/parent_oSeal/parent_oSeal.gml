var x_input = (right - left);


/*
Vectors:
	v2_x is the 0th index in velocity for the x direction
	v2_y is the 1st index in velocity for the y direction
*/
var v2_x = 0;
var v2_y = 1;

//Horizontal
//maintains the x direction between our min and max values
velocity[v2_x] = clamp(velocity[v2_x] + x_input, - max_velocity[v2_x], max_velocity[v2_x]);

//Not moving
if x_input == 0 {
	// Stop moving when not pressing
	velocity[v2_x] = lerp(velocity[v2_x], 0, 0.2);
}

//Gravity
velocity[v2_y] += grav;

//Resolve
resolve_collision(collision_tile_map_id, 32, velocity);

var bottom_left_point = [bbox_left, bbox_bottom];
var bottom_right_point = [bbox_right, bbox_bottom];
tile_bottom = tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point);
var bottom_middle_point = [bbox_right - 16, bbox_bottom];
tile_bottom_a = tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_middle_point);
tile_bottom_b = tile_collision_point_bottom_2d(collision_tile_map_id,bottom_middle_point,bottom_right_point);