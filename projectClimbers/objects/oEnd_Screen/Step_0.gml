/// @description Insert description here
// You can write your code in this editor

menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)

menu_index += menu_move
if(menu_index < 0) {
	menu_index = button_count - 1
} else if (menu_index > button_count - 1) {
	menu_index = 0
}

last_selected = menu_index