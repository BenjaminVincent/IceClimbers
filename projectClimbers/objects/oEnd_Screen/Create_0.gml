col_1 = make_color_rgb(225,96,244);
col_2 = make_color_rgb(237,89,73);

//center
x = room_width/2;
y = room_height/2;

//buttons
buttons[0] = "Play Agian"
buttons[1] = "Main Menu"
buttons[2] = "Quit"
button_count = array_length_1d(buttons)

menu_index = 0
last_selected = 0

button_h = 32
menu_x = x
menu_y = y - floor(button_count/2) * button_h;