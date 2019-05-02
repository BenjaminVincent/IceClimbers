room_height = room_width*global.aspect_height/global.aspect_width;

//center
x = room_width/2;
y = room_height/2;

//buttons
buttons[0] = "New Game"
buttons[1] = "Options"
buttons[2] = "Quit"
button_count = array_length_1d(buttons)

menu_index = 0
last_selected = 0

button_h = 32
menu_x = x
menu_y = y - floor(button_count/2) * button_h;
