#region initalize viewport
viewport_height = room_width*global.asspect_hight/global.asspect_width;
viewport_width = room_width;
var border_percent = 0.3;
start_time = 0;
saved_player_position = oPlayer.y
camera_scroll_y = room_height-viewport_height

var dwidth = display_get_width();
var dheight = display_get_height();
var xpos = (dwidth / 2) - 480;
var ypos = (dheight / 2) - 270;
window_set_rectangle(xpos, ypos, room_width,viewport_height);

surface_resize(application_surface, room_width, viewport_height);

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = viewport_width;
view_hport[0] = viewport_height;

view_camera[0] = camera_create_view(32,camera_scroll_y,viewport_width-64,viewport_height,0,oGame,0,7,0,viewport_height);//(room_height/2)-room_height*border_percent);
viewport_ypos = camera_get_view_y(view_camera[0])
viewport_bottom_ypos = viewport_ypos + viewport_height
view_temp = viewport_bottom_ypos
#endregion
check = false

// set oGame position
y = room_height - viewport_height/2; 
x = room_width/2;
screen_move_interval = 14*32

// Regular layer
var layer_id = layer_get_id("collisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

// initalize oSeal list
for (var i = 0; i < instance_number(oSeal); i += 1) {
	global.seal_list[i] = instance_find(oSeal, i);	
}

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
	buildseal
}