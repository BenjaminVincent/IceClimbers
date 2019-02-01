///@description control states
/*
	Control current states
	list of states:
		- Move
		- Attack
		- Hit
		- Death
*/

if (state == states.move) {
	#region Move
	move_oPlayer();
	#endregion
}

if (state == states.attack) {
	#region Attack
	attack_oPlayer();
	#endregion
}

if (state == states.hit) {
	#region Hit
	
	#endregion
}

if (state == states.death) {
	#region Death
	
	#endregion
}

