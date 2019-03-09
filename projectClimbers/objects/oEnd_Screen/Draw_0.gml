draw_set_font(fEnd);
draw_set_halign(fa_center);
draw_text_color(menu_x, 128, "Level Complete",col_1,0,col_2,0,1);


var i = 0
draw_set_font(fDefault)
repeat(button_count) {
	
	
	draw_set_color(c_ltgray)
	
	if (menu_index == i) {
		draw_set_color(c_red)
	}
	
	draw_text(menu_x, menu_y + button_h * i, buttons[i])
	i++
}