if window_get_fullscreen(){
	window_set_fullscreen(false);
}
else{
	window_set_fullscreen(true)
	window_set_size(display_get_width(),display_get_height())
}

screenw = window_get_width();
show_debug_message("width of screen = " + string(screenw));

