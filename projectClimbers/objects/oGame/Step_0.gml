/// @description Control timer

bottom_left_point = [oPlayer.bbox_left, oPlayer.bbox_bottom];
bottom_right_point = [oPlayer.bbox_right, oPlayer.bbox_bottom];
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

/* code used for debuging the the bottom screen position in room
if keyboard_check_pressed(ord("U")) {
	y --;
	show_debug_message("oGame's y = " + string(y))
	show_debug_message("the viewport bottom = " + string(viewport_bottom_ypos))
	viewport_ypos = camera_get_view_y(view_camera[0]);
	viewport_bottom_ypos = viewport_ypos + viewport_height;
}*/
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
} else if view_temp == viewport_bottom_ypos and ((viewport_bottom_ypos) mod 32) != 0 {
	oGame.y --;
}