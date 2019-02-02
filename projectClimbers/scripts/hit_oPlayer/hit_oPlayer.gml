var viewport_ypos = camera_get_view_y(view_camera[0])
velocity = [0, 0];
var viewport_bottom_ypos = viewport_ypos + view_hport[0]
var layer_id = layer_get_id("collisionTiles");
var collision_tile_map_id = layer_tilemap_get_id(layer_id);
var cell_bump = 0
var saved_player_position = x
var landing_cell = tilemap_get_at_pixel(collision_tile_map_id,saved_player_position,viewport_bottom_ypos-48)
var reps = room_width/32

show_debug_message("view bottom = " + string(viewport_bottom_ypos))
show_debug_message("landing cell = "+string(landing_cell))
// is the tile below the player soild?
for (var i = 0; i < reps; i += 1) {
	show_debug_message("landing cell = "+string(landing_cell))
	//Yes
	if landing_cell != 0 {
		show_debug_message("landing is solid")
		reps = -1
		y = viewport_bottom_ypos - 64;
		x += cell_bump*32
		health--;

		if health < 1 {
			state = states.deathplayer
		} else state = states.moveplayer;
	//no	
	} else
		cell_bump = i
		if (cell_bump mod 2) == 0 {
			cell_bump *= -1
		}
		landing_cell = tilemap_get_at_pixel(collision_tile_map_id,saved_player_position + (cell_bump*32),viewport_bottom_ypos-65)
		show_debug_message("iteration " + string(i))
}