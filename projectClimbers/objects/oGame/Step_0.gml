/// @description Control timer
bottom_left_point = [oPlayer.bbox_left + 2, oPlayer.bbox_bottom];
bottom_right_point = [oPlayer.bbox_right - 2, oPlayer.bbox_bottom];
view_ypos = camera_get_view_y(view_camera[0]);
view_bottom_ypos = view_ypos + view_height;

#region Timer
PassedTime = current_time - start_time;
minutes = PassedTime div 60000;
seconds = (PassedTime div 1000) mod 60;
milliseconds = PassedTime mod 1000;


if seconds < 10 {
	seconds = "0" + string(seconds)	
} else {
	seconds = seconds;
} 
global.minutes = minutes;
global.seconds = seconds;
#endregion

#region view and oGame movment
// the play has moved high enough to start moving the view
if oPlayer.y < (saved_player_position - 12*32) and tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point) > 0 {
	oGame.y -= screen_move_interval
	viewport_ypos = camera_get_view_y(view_camera[0]);
	view_bottom_ypos = view_ypos + view_height;
	saved_player_position = oPlayer.y;
	screen_move_interval += 32
	show_debug_message("oGame's y = " + string(y))
}
// the view is moving
if view_temp != view_bottom_ypos {
	view_ypos = camera_get_view_y(view_camera[0]);
	view_bottom_ypos = view_ypos + view_height;
	view_temp = view_bottom_ypos
	show_debug_message("the view bottom = " + string(view_bottom_ypos))
	show_debug_message("the tempory value = " + string(view_temp))
} else if view_temp == view_bottom_ypos // the view has moved satisfactory to the above conditions
and ((round(view_bottom_ypos)) mod 32) != 0 // the bottom of the view isn't at a multiple of 32
and oGame.y > 0 // oGame isn't trying to leave the room
{
	oGame.y --; // move oGame up
	show_debug_message("oGame has been moved up");
}#endregion

#region debug features
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
} #endregion