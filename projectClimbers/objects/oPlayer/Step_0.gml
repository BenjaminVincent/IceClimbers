///@description control states
/*
	Control current states
	list of states:
		- Move
		- Attack
		- Hit
		- Death
*/

if (state == states.moveplayer) {
	#region Move
	move_oPlayer();
	#endregion
}

if (state == states.attackplayer) {
	#region Attack
	attack_oPlayer();
	#endregion
}

if (state == states.hitplayer) {
	#region Hit
	hit_oPlayer();
	#endregion
}

if (state == states.deathplayer) {
	#region Death
	death_oPlayer()
	#endregion
}

