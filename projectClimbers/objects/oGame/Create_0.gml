//@description initialize camera/view

#region initalize viewport
event_inherited()

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = viewport_width;
view_hport[0] = viewport_height;

/*
	Changes zoom of camera
	**This might be an issue**
*/
var view_zoom_percent = 0.5;
view_width = viewport_width * view_zoom_percent;
view_height = viewport_height * view_zoom_percent;
camera_y= room_height-view_height;
view_camera[0] = camera_create_view(0,camera_y,view_width,view_height,0,oGame,0,7,0,view_height);

get_camera_y_bottom(0);

#endregion
saved_player_position = oPlayer.y
start_time = 0;
// gravity
global.grav = 1

// set oGame position
y = room_height - view_height/2;
x = room_width/2;
screen_move_interval = 9*32
saved_screen_move_interval = screen_move_interval;

// Regular layer
var layer_id = layer_get_id("collisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

#region Lists of objects
// initalize oSeal list
for (var i = 0; i < instance_number(oSeal); i += 1) {
	global.seal_list[i] = instance_find(oSeal, i);
}
// intialize oEggplant list
for (var j = 0; j < instance_number(oEggplant); j += 1) {
	global.eggplant_list[j] = instance_find(oEggplant, j);
} #endregion

#region States
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
} #endregion
