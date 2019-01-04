// crete globl variables
global.asspect_width = 16;
global.asspect_hight = 9;
var viewport_height = room_height*global.asspect_hight/global.asspect_width;
var viewport_width = room_width;

// initalize viewport

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = room_width;
view_hport[0] = viewport_height;

view_camera[0] = camera_create_view(0,room_height-viewport_height,room_width,viewport_height,0,oPlayer,-1,-1,0,(room_height/2)-room_height*0.4);

var dwidth = display_get_width();
var dheight = display_get_height();
var xpos = (dwidth / 2) - 480;
var ypos = (dheight / 2) - 270;
window_set_rectangle(xpos, ypos, room_width,viewport_height);

surface_resize(application_surface, room_width, viewport_height);