///@param tile_map_id
///@param tile_map_id_2
///@param tile_size
///@param velocity_array

var tile_map_id = argument0;
var tile_size = argument1;
var velocity = argument2;

var v2_x = 0;
var v2_y = 1;

// Cell locations of right and left side of the object
r_pixel_x = tilemap_get_cell_x_at_pixel(tile_map_id, bbox_right, oPlayer.y);
r_pixel_y = tilemap_get_cell_y_at_pixel(tile_map_id, bbox_right, oPlayer.y -32);
cell_right = tilemap_get(tile_map_id, r_pixel_x, r_pixel_y);
l_pixel_x = tilemap_get_cell_x_at_pixel(tile_map_id, bbox_left, oPlayer.y);
l_pixel_y = tilemap_get_cell_y_at_pixel(tile_map_id, bbox_left, oPlayer.y - 32);
cell_left = tilemap_get(tile_map_id, l_pixel_x, l_pixel_y);

// Horizontal
x += velocity[v2_x]

// Right side
if velocity[v2_x] > 0 {
	// Check for right side collision
	var tile_right = tile_collision_point(tile_map_id,[bbox_right - 1, bbox_top], [bbox_right - 1, bbox_bottom - 1]);
	// if true we snap it back to the correct position
	if tile_right {
		x = bbox_right & ~(tile_size - 1);
		x -= bbox_right - x;
		// @ accesses the actual array of the object, example: oPlayer
		velocity[@ v2_x] = 0;
		right_hit = true;
	}
// Left side
} else {
	var tile_left = tile_collision_point(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom - 1]);
	if tile_left {
		x = bbox_left & ~(tile_size - 1);
		x += tile_size + x - bbox_left;
		velocity[@ v2_x] = 0;
		left_hit = true;
	}
}

// Vertical
y += velocity[v2_y];

// Vert collision
if velocity[v2_y] > 0 {
	var bottom_left_point = [bbox_left, bbox_bottom - 1];
	var bottom_right_point = [bbox_right - 1, bbox_bottom - 1];
	var tile_bottom = tile_collision_point(tile_map_id,bottom_left_point,bottom_right_point);
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
		// additional varibles define the cels to the left and right of the player
		var oPlayer_x = tilemap_get_cell_x_at_pixel(tile_map_id, oPlayer.x, oPlayer.y);
		var oPlayer_x1r = tilemap_get_cell_x_at_pixel(tile_map_id, oPlayer.x + 32, oPlayer.y);
		var oPlayer_x1l = tilemap_get_cell_x_at_pixel(tile_map_id, oPlayer.x - 32, oPlayer.y);
		var oPlayer_y = tilemap_get_cell_y_at_pixel(tile_map_id, oPlayer.x, oPlayer.y - 32);		
		var tilemap_data = tilemap_get(tile_map_id, oPlayer_x, oPlayer_y);
		var index = tile_get_index(tilemap_data);
			if index == 2 {
				var data = tile_set_index(tilemap_data, 0);
				tilemap_set(tile_map_id, data, oPlayer_x, oPlayer_y);	
			}
		// if index is 0 and colision occurs there must be a block obove in an ajcent cell
		if 0 == index {
			// if the right side of the player is in same cell as the orgin change the idex of the one to the left
			if cell_right == tilemap_data{
				data_1 = tilemap_get(tile_map_id, oPlayer_x1l, oPlayer_y);
				data_1 = tile_get_index(data_1)
					// if its a breakable tile
					if data_1 == 2 {
						data_1 = tile_set_index(data_1,0);
					}
				tilemap_set(tile_map_id, data_1, oPlayer_x1l, oPlayer_y);
			// if the left side of the player is in same cell as the orgin change the idex of the one to the right
			} else if cell_left == tilemap_data{
				data_2 = tilemap_get(tile_map_id, oPlayer_x1r, oPlayer_y);
				data_2 = tile_get_index(data_2)
					if data_2 == 2 {
						data_2 = tile_set_index(data_2,0);
					}
				tilemap_set(tile_map_id, data_2, oPlayer_x1r, oPlayer_y);
				}
		}
	} 
}