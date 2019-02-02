if alive{
	y = room_height*2
	var viewport_ypos = camera_get_view_y(view_camera[0])
	var view_center = viewport_ypos + view_hport[0]/2
	instance_create_depth(room_width/2,view_center,-100,oMenu_Gameover)
	alive = false;
}