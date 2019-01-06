

// initalize viewport

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = room_width;
view_hport[0] = global.viewport_height;

view_camera[0] = camera_create_view(0,room_height-global.viewport_height,room_width,global.viewport_height,0,oPlayer,-1,-1,0,(room_height/2)-room_height*0.4);