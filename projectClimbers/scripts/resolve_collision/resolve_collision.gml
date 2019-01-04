///@param tile_map_id
///@param tile_size
///@param velocity_array

var tile_map_id = argument0;
var tile_size = argument1;
var velocity = argument2;

var v2_x = 0;
var v2_y = 1;

// Horizontal
x += velocity[v2_x]

// Right side
if velocity[v2_x] > 0 {
	var tile_right = tile_collision_point(tile_map_id, [bbox_right - 1, bbox_top], [bbox_right - 1, bbox_bottom - 1]);
	if tile_right {
		x = bbox_right & ~(tile_size - 1);
		x -= bbox_right - x;
		velocity[@ v2_x] = 0;
	}
// Left side
} else {
	var tile_left = tile_collision_point(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom - 1]);
	if tile_left {
		x = bbox_left & ~(tile_size - 1);
		x += tile_size + x - bbox_left;
		velocity[@ v2_x] = 0;
	}
}

// Vertical
y += velocity[v2_y];

// Vert collision
if velocity[v2_y] > 0 {
	var tile_bottom = tile_collision_point(tile_map_id, [bbox_left, bbox_bottom - 1], [bbox_right - 1, bbox_bottom - 1]);
	if tile_bottom {
		y = bbox_bottom & ~(tile_size - 1);
		y -= bbox_bottom - y;
		velocity[@ v2_y] = 0;
	}
		
} else {
	var tile_top = tile_collision_point(tile_map_id, [bbox_left, bbox_top], [bbox_right - 1, bbox_top]);
	if tile_top {
		y = bbox_top & ~(tile_size - 1);
		y += tile_size + y - bbox_top;
		velocity[@ v2_y] = 0;
	}
}