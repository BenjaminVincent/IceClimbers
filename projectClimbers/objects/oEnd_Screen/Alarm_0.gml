/// @description score counter

if score_seconds {
	score += 10;
	score_seconds --;
} else if score_minutes {
	score_minutes --;
	score_seconds += 60;
} 
if score_minutes or score_seconds {
	alarm[0] = 5;
}