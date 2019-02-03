velocity = [0, 0];
viewport_ypos = camera_get_view_y(view_camera[0])
viewport_bottom_ypos = viewport_ypos + view_hport[0]

if view_temp != viewport_bottom_ypos {
	viewport_ypos = camera_get_view_y(view_camera[0]);
	viewport_bottom_ypos = viewport_ypos + view_hport[0];
	view_temp = viewport_bottom_ypos
} else {state = states.moveplayer}
