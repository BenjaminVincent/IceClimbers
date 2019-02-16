/// @description Control timer

bottom_left_point = [oPlayer.bbox_left + 2, oPlayer.bbox_bottom];
bottom_right_point = [oPlayer.bbox_right - 2, oPlayer.bbox_bottom];
viewport_ypos = camera_get_view_y(view_camera[0]);
viewport_bottom_ypos = viewport_ypos + viewport_height;

#region Timer
PassedTime = current_time - start_time;
minutes = PassedTime div 60000;
seconds = (PassedTime div 1000) mod 60;
milliseconds = PassedTime mod 1000;


if seconds < 10 {
	seconds = "0" + string(seconds)	
} else {
	seconds = seconds;	
} #endregion

#region code used for debuging the bottom screen position in the room
/*if keyboard_check_pressed(ord("U")) {
	y --;
	show_debug_message("oGame's y = " + string(y))
	show_debug_message("the viewport bottom = " + string(viewport_bottom_ypos))
	viewport_ypos = camera_get_view_y(view_camera[0]);
	viewport_bottom_ypos = viewport_ypos + viewport_height;
}*/ #endregion

#region view and oGame movment
// the play has moved high enough to start moving the view
if oPlayer.y < (saved_player_position - 12*32) and tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point) > 0 {
	oGame.y -= screen_move_interval
	viewport_ypos = camera_get_view_y(view_camera[0]);
	viewport_bottom_ypos = viewport_ypos + viewport_height;
	saved_player_position = oPlayer.y;
	screen_move_interval += 32
	//show_debug_message("oGame's y = " + string(y))
}
// the view is moving
if view_temp != viewport_bottom_ypos {
	viewport_ypos = camera_get_view_y(view_camera[0]);
	viewport_bottom_ypos = viewport_ypos + viewport_height;
	view_temp = viewport_bottom_ypos
	//show_debug_message("the viewport bottom = " + string(viewport_bottom_ypos))
	//show_debug_message("the tempory value = " + string(view_temp))
} else if view_temp == viewport_bottom_ypos and ((viewport_bottom_ypos) mod 32) != 0 and oGame.y > 0 {
	oGame.y --;
}#endregion

if (mouse_check_button_pressed(mb_left) and !check) {
	var viewprt_ypos = camera_get_view_y(view_camera[0])
	var viewprt_bottom_ypos = viewprt_ypos + view_hport[0]
	var layer_id = layer_get_id("collisionTiles");
	var colli_tile_map_id = layer_tilemap_get_id(layer_id);
	var landing_cell = tilemap_get_at_pixel(colli_tile_map_id,mouse_x,viewport_bottom_ypos-48)
	show_debug_message("landing cell = "+string(landing_cell))
}

if keyboard_check_pressed(ord("C")) {
	if check {
		check = false
		show_debug_message("Seal check mode is off")
	}
	else if !check {
		check = true
		show_debug_message("Seal check mode is on")
	}
}
if check {
	if mouse_check_button_pressed(mb_left) {
		if position_meeting(mouse_x,mouse_y,oSeal){
			//show_debug_message("seal found")
			for (var i = 0; i < array_length_1d(global.seal_list); i += 1) {
				if position_meeting(mouse_x, mouse_y, global.seal_list[i]) {
				var seal_state = global.seal_list[i].state;
				show_debug_message("this seal is in state number "+string(seal_state))
				} 
			}
		} else {
		show_debug_message("no seal found")
		}
	}
}