var viewport_height = room_width*global.asspect_hight/global.asspect_width;
var viewport_ypos = camera_get_view_y(view_camera[0])
var viewport_bottom_ypos = viewport_ypos + viewport_height

y = viewport_bottom_ypos - 64;
health--;

if health < 1 {
	state = states.deathplayer
} else state = states.moveplayer;