// create global variables
global.asspect_width = 16;
global.asspect_hight = 9;
global.viewport_height = room_height*global.asspect_hight/global.asspect_width;
global.viewport_width = room_width;

room_height = global.viewport_height

var dwidth = display_get_width();
var dheight = display_get_height();
var xpos = (dwidth / 2) - 480;
var ypos = (dheight / 2) - 270;
window_set_rectangle(xpos, ypos, room_width,global.viewport_height);

surface_resize(application_surface, room_width, global.viewport_height);