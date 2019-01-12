/// @description
dir = "right";
can_attack = true;
velocity = [0, 0];
grav = 1.6;
jump_speed = 24;
max_velocity = [4, 16];
acceleration = 2.1;
// Regular layer
var layer_id = layer_get_id("collisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

// Break layer
var layer_id_2 = layer_get_id("breakTiles");
break_tile_map_id = layer_tilemap_get_id(layer_id_2);

health = 3;