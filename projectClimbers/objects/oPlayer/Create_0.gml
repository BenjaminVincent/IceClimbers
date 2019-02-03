/// @description
dir = "right";
velocity = [0, 0];
grav = 1.6;
jump_speed = 24;
max_velocity = [4, 16];
acceleration = 2.1;
alive = true;
viewport_ypos = camera_get_view_y(view_camera[0])
viewport_bottom_ypos = viewport_ypos + view_hport[0]
view_temp = viewport_bottom_ypos
// Regular layer
var layer_id = layer_get_id("collisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

health = 3;


// state default
state = states.moveplayer