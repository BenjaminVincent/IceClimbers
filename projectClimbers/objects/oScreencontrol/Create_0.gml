// create global variables
global.asspect_width = 16;
global.asspect_hight = 9;

viewport_height = room_width*global.asspect_hight/global.asspect_width;
viewport_width = room_width;

var dwidth = display_get_width();
var dheight = display_get_height();
var xpos = (dwidth / 2) - 480;
var ypos = (dheight / 2) - 270;

window_set_rectangle(xpos, ypos, viewport_width,viewport_height);

surface_resize(application_surface, room_width, viewport_height);