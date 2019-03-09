col_1 = make_color_rgb(225,96,244);
col_2 = make_color_rgb(237,89,73);

room_height = room_width*global.asspect_hight/global.asspect_width;

//center
x = room_width/2;
y = room_height/2;

//buttons
buttons[0] = "Next level"
buttons[1] = "Main Menu"
buttons[2] = "Quit"
button_count = array_length_1d(buttons)

menu_index = 0
last_selected = 0

button_h = 32
menu_x = x
menu_y = y - floor(button_count/2) * button_h;

view_width = view_get_wport(view_camera[0]);
view_hieght = view_get_hport(view_camera[0]);
//bench time is time to beat to get score bassed on time
bench_time_min = 1;
bench_time_sec = 00;
// calculate score
score_minutes = clamp(bench_time_min - global.minutes,0,10000);
if bench_time_sec < global.seconds {
	bench_time_min --;
	score_minutes = clamp(bench_time_min - global.minutes,0,10000);
	bench_time_sec += 60;
}
score_seconds = bench_time_sec - global.seconds;
alarm[0] = 60;