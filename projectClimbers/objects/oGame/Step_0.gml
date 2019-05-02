/// @description Control camera

bottom_left_point = [oPlayer.bbox_left + 2, oPlayer.bbox_bottom];
bottom_right_point = [oPlayer.bbox_right - 2, oPlayer.bbox_bottom];
view_ypos = camera_get_view_y(view_camera[0]);
view_bottom_ypos = view_ypos + view_height;

#region Timer
PassedTime = current_time - start_time;
minutes = PassedTime div 60000;
seconds = (PassedTime div 1000) mod 60;


if seconds < 10 {
	seconds = "0" + string(seconds)
} else {
	seconds = seconds;
}
global.minutes = minutes;
global.seconds = seconds;
#endregion

#region Move view/camera/oGame objects
// Player has moved high enough to start moving the view
if oPlayer.y < (saved_player_position - 9*32) and
				tile_collision_point_bottom_2d(collision_tile_map_id, bottom_left_point, bottom_right_point) > 0 {
	oGame.y -= screen_move_interval
	viewport_ypos = camera_get_view_y(view_camera[0]);
	view_bottom_ypos = view_ypos + view_height;
	saved_player_position = oPlayer.y;
}

// View is moving
if view_temp != view_bottom_ypos {
	get_camera_y_bottom(0);
} else if view_temp == view_bottom_ypos // the view has moved satisfactory to the above conditions
and ((round(view_bottom_ypos)) mod 32) != 0 // the bottom of the view isn't at a multiple of 32
and oGame.y > 0 // oGame isn't trying to leave the room
{
	oGame.y --; // move oGame up
}
x = oPlayer.x
#endregion
