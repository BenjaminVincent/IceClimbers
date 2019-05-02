// create global variables
global.aspect_width = 16;
global.aspect_height = 9;

// ******
viewport_height = room_width * global.aspect_height/global.aspect_width;
viewport_width = room_width;

var dwidth = display_get_width();
var dheight = display_get_height();

// Initial start position (centered on screen)
var xpos = (dwidth / 2) - 480;
var ypos = (dheight / 2) - 270;
window_set_rectangle(xpos, ypos, room_width, viewport_height);

surface_resize(application_surface, room_width, viewport_height);