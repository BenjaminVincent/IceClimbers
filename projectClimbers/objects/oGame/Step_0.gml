/// @description Control timer

bottom_left_point = [oPlayer.bbox_left, oPlayer.bbox_bottom];
bottom_right_point = [oPlayer.bbox_right, oPlayer.bbox_bottom];

PassedTime = current_time - start_time;
minutes = PassedTime div 60000;
seconds = (PassedTime div 1000) mod 60;
milliseconds = PassedTime mod 1000;


if seconds < 10 {
	seconds = "0" + string(seconds)	
} else {
	seconds = seconds;	
}
viewport_ypos = camera_get_view_y(view_camera[0])


if oPlayer.y < (saved_player_position - (screen_move_interval)) and tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point) > 0 {
	oGame.y -= (saved_player_position - oPlayer.y)
	while ((viewport_ypos + viewport_height) mod 32) != 0 {
		oGame.y --;
	} 
	saved_player_position = oPlayer.y;
	show_debug_message(y)
}
