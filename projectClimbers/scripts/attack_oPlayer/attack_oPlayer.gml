hammer = keyboard_check_pressed(ord("Z"));

	if dir == "right" and hammer {
		instance_create_depth(x + 16, y, -1, oHammer);
		alarm[0] = 30;
	}

	if dir == "left" and hammer{
		instance_create_depth(x - 16, y, -1, oHammer);
		alarm[0] = 30;
	}

