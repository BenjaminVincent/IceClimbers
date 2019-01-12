///@param tile_map_id
///@param tile_map_id_2
///@param tile_size
///@param velocity_array

var tile_map_id = argument0;
var tile_map_id_2 = argument1;
var tile_size = argument2;
var velocity = argument3;

var v2_x = 0;
var v2_y = 1;

// Cell locations of right and left side of the object
r_pixel_x = tilemap_get_cell_x_at_pixel(tile_map_id_2, bbox_right, oPlayer.y);
r_pixel_y = tilemap_get_cell_y_at_pixel(tile_map_id_2, bbox_right, oPlayer.y -32);
cell_right = tilemap_get(tile_map_id_2, r_pixel_x, r_pixel_y);
l_pixel_x = tilemap_get_cell_x_at_pixel(tile_map_id_2, bbox_left, oPlayer.y);
l_pixel_y = tilemap_get_cell_y_at_pixel(tile_map_id_2, bbox_left, oPlayer.y - 32);
cell_left = tilemap_get(tile_map_id_2, l_pixel_x, l_pixel_y);

// Horizontal
x += velocity[v2_x]

// Right side
if velocity[v2_x] > 0 {
	// Check for right side collision
	var tile_right = tile_collision_point(tile_map_id,tile_map_id_2, [bbox_right - 1, bbox_top], [bbox_right - 1, bbox_bottom - 1]);
	// if true we snap it back to the correct position
	if tile_right {
		x = bbox_right & ~(tile_size - 1);
		x -= bbox_right - x;
		// @ accesses the actual array of the object, example: oPlayer
		velocity[@ v2_x] = 0;
	}
// Left side
} else {
	var tile_left = tile_collision_point(tile_map_id, tile_map_id_2, [bbox_left, bbox_top], [bbox_left, bbox_bottom - 1]);
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
	var tile_bottom = tile_collision_point(tile_map_id, tile_map_id_2, [bbox_left, bbox_bottom - 1], [bbox_right - 1, bbox_bottom - 1]);
	if tile_bottom {
		y = bbox_bottom & ~(tile_size - 1);
		y -= bbox_bottom - y;
		velocity[@ v2_y] = 0;
	}
		
} else {
	var tile_top = tile_collision_point(tile_map_id, tile_map_id_2, [bbox_left, bbox_top], [bbox_right - 1, bbox_top]);
	if tile_top {
		y = bbox_top & ~(tile_size - 1);
		y += tile_size + y - bbox_top;
		velocity[@ v2_y] = 0;
		if tile_top && tile_map_id_2 {	
			var oPlayer_x = tilemap_get_cell_x_at_pixel(tile_map_id_2, oPlayer.x, oPlayer.y);
			var oPlayer_x1r = tilemap_get_cell_x_at_pixel(tile_map_id_2, oPlayer.x + 32, oPlayer.y);
			var oPlayer_x1l = tilemap_get_cell_x_at_pixel(tile_map_id_2, oPlayer.x - 32, oPlayer.y);
			var oPlayer_y = tilemap_get_cell_y_at_pixel(tile_map_id_2, oPlayer.x, oPlayer.y - 32);		
			var tilemap_data = tilemap_get(tile_map_id_2, oPlayer_x, oPlayer_y);
			var index = tile_get_index(tilemap_data);
			var data = tile_set_index(tilemap_data, 0);
			tilemap_set(tile_map_id_2, data, oPlayer_x, oPlayer_y);
			if 0 == index {
				if cell_right == tilemap_data{
					data_1 = tilemap_get(tile_map_id_2, oPlayer_x1l, oPlayer_y);
					data_1 = tile_set_index(data_1,0);
					tilemap_set(tile_map_id_2, data_1, oPlayer_x1l, oPlayer_y);
				} else if cell_left == tilemap_data{
					data_2 = tilemap_get(tile_map_id_2, oPlayer_x1r, oPlayer_y);
					data_2 = tile_set_index(data_2,0);
					tilemap_set(tile_map_id_2, data_2, oPlayer_x1r, oPlayer_y);
				}
			}
		}
	} 
}