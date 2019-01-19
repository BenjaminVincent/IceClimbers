/// @description Insert description here

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

if oPlayer.y < (saved_player_position - (32*12)) and tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point) > 0 {
	while oPlayer.y - camera_get_view_y(view_camera[0]) < global.viewport_height - 48 {
		camera_set_view_pos(view_camera[0],0,camera_scroll_y)
		camera_scroll_y --;
	}
	
	//camera_set_view_speed(view_camera[0],0,0);
	saved_player_position = oPlayer.y;
}