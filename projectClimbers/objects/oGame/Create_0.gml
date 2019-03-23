#region initalize viewport
event_inherited()

room_middle = room_width/2

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = viewport_width;
view_hport[0] = viewport_height;

var view_zoom_perecnt = 0.6;
view_width = viewport_width*view_zoom_perecnt;
view_height = viewport_height*view_zoom_perecnt;
var view_border = room_middle - view_width/2;
camera_scroll_y = room_height-view_height;

view_camera[0] = camera_create_view(view_border,camera_scroll_y,view_width,view_height,0,oGame,0,7,0,view_height);

view_ypos = camera_get_view_y(view_camera[0])
view_bottom_ypos = view_ypos + view_height;
view_temp = view_bottom_ypos
show_debug_message("view bottom = "+ string(view_bottom_ypos));
#endregion
saved_player_position = oPlayer.y
check = false
start_time = 0;
// gravity
global.grav = 1

// set oGame position
y = room_height - view_height/2; 
x = room_width/2;
screen_move_interval = 9*32

// Regular layer
var layer_id = layer_get_id("collisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

#region lists of objects
// initalize oSeal list
for (var i = 0; i < instance_number(oSeal); i += 1) {
	global.seal_list[i] = instance_find(oSeal, i);
}
// intialize oEggplant list
for (var j = 0; j < instance_number(oEggplant); j += 1) {
	global.eggplant_list[j] = instance_find(oEggplant, j);
} #endregion

enum states {
	// oPlayer	
	moveplayer,
	attackplayer,
	immobileplayer,
	hitplayer,
	deathplayer,
	// oSeal
	moveseal,
	hitseal,
	retreatseal,
	buildseal,
	trippedseal,
}