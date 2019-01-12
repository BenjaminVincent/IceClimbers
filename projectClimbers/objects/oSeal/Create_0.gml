/// @description initialize enemy

initial_x = x;
initial_y = y;

show_debug_message(initial_x);

hit = false;

left = 1;
right = 0;

velocity = [0, 0];
grav = 1.6;
max_velocity = [1, 10];
acceleration = 2.1;

// Regular layer
var layer_id = layer_get_id("collisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

// Break layer
var layer_id_2 = layer_get_id("breakTiles");
break_tile_map_id = layer_tilemap_get_id(layer_id_2);
