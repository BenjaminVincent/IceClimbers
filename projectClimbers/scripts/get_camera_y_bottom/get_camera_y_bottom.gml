///@param view_camera[i]

var i = argument[0];

// Get bottom of camera y
view_ypos = camera_get_view_y(view_camera[i]);
view_bottom_ypos = view_ypos + view_height;
view_temp = view_bottom_ypos