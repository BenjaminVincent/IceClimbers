velocity[1] += global.grav;
y += velocity[1];
var hit = true
var tile_right = tile_collision_point(collision_tile_map_id,[bbox_right - 1, bbox_top], [bbox_right - 1, bbox_bottom - 1]);
var tile_left = tile_collision_point(collision_tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom - 1]);

if !tile_right and !tile_left {
	hit = false;
} else velocity[@ 0] = 0;


if !hit {
	state = states.hitseal;
}