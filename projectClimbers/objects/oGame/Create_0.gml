// initalize viewport
var border_percent = 0.3;
start_time = 0;
saved_player_position = oPlayer.y
camera_scroll_y = room_height-global.viewport_height
view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = global.viewport_width;
view_hport[0] = global.viewport_height;

view_camera[0] = camera_create_view(32,camera_scroll_y,global.viewport_width-64,global.viewport_height,0,0,0,0,0,(room_height/2)-room_height*border_percent);

// Regular layer
var layer_id = layer_get_id("collisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

show_debug_message(string(saved_player_position));