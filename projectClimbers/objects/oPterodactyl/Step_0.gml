// Collides with oPlayer

if place_meeting(x, y, oPlayer) {
	room_goto(rEnd);
}

// Loop to other side

if (x > room_width) {
	x = 0;	
} else if (x < 0) {
	x = room_width;	
}

x += hspeed