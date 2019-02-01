var sprit_mult = 2/3

for(i=0;i<health;i++){												// loop through the number of hearts we have
	draw_sprite_stretched(sLife,0,50+(sprite_get_width(sLife)*i),50,sprite_get_width(sLife)*sprit_mult,sprite_get_height(sLife)*sprit_mult);			// draw if we have them
}

// Draw timer
draw_text(room_width-50, 50, string(minutes) + ":" + + string(seconds));


// Draw FPS
draw_text(35,25, "FPS: " + string(fps));