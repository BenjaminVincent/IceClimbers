

/// @description Insert description here
// You can write your code in this editor

var i = 0

repeat(button_count) {
	
	
	draw_set_color(c_ltgray)
	
	if (menu_index == i) {
		draw_set_color(c_red)
	}
	
	draw_text(menu_x, menu_y + button_h * i, buttons[i])
	i++
}