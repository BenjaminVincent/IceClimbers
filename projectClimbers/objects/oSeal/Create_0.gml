/// @description initialize enemy
state = states.moveseal;
recall_x = x;
recall_y = y;

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