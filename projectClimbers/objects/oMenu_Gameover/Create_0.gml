/// @description Creating the game over menu

//buttons
buttons[0] = "New Game"
buttons[1] = "Main Menu"
buttons[2] = "Quit"
button_count = array_length_1d(buttons)

menu_index = 0
last_selected = 0

button_h = 32
menu_x = x
menu_y = y - floor(button_count/2) * button_h;