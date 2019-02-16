/// @description initialize enemy
state = states.moveseal;
recall_x = x;
recall_y = y;

hit = false;
fallen = false;
first = true;
tile_size = 32;

if (recall_x < room_width/2) {
	left = 0;
	right = 1;
} else {		
	left = 1;
	right = 0;
}

velocity = [0, 0];
grav = 1.6;
max_velocity = [1, 10];
acceleration = 3;

// Regular layer
var layer_id = layer_get_id("collisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

off_screen_left = camera_get_view_x(view_camera[0]);
off_screen_right = camera_get_view_width(view_camera[0]) + off_screen_left;