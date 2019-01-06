// crete globl variables
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

/// @description Insert description here
// You can write your code in this editor
menu_x = x
menu_y = y
button_h = 32

//buttons
buttons[0] = "New Game"
buttons[1] = "Options"
buttons[2] = "Quit"
button_count = array_length_1d(buttons)

menu_index = 0
last_selected = 0