/// @description

///@description control states
/*
	Control current states
	list of states:
		- Move
		- Hit
		- Retreat
		- Build

*/

if (state == states.moveseal) {
	#region Move
	move_oSeal();
	#endregion
}

if (state == states.hitseal) {
	#region Hit
	hit_oSeal();
	#endregion
}

if (state == states.retreatseal) {
	#region Retreat
	retreat_oSeal();
	#endregion
}

if (state == states.buildseal) {
	#region Build
	build_oSeal();
	#endregion
}

if (state == states.deathplayer) {
	#region Death
	death_oPlayer();
	#endregion
}





