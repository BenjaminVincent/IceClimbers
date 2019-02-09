bottom_left_point = [oPlayer.bbox_left + 2, oPlayer.bbox_bottom];
bottom_right_point = [oPlayer.bbox_right - 2, oPlayer.bbox_bottom];
velocity = [0, 0];
viewport_ypos = camera_get_view_y(view_camera[0])
viewport_bottom_ypos = viewport_ypos + view_hport[0]

if tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point) != 3 {
	if tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point) == 1 {
		// move left
		x --
	} else if tile_collision_point_bottom_2d(collision_tile_map_id,bottom_left_point,bottom_right_point) == 2{
		// move right
		x++
	}
}

if view_temp != viewport_bottom_ypos {
	viewport_ypos = camera_get_view_y(view_camera[0]);
	viewport_bottom_ypos = viewport_ypos + view_hport[0];
	view_temp = viewport_bottom_ypos
} else {state = states.moveplayer}
