/// @description Insert description here

PassedTime = current_time - start_time;
minutes = PassedTime div 60000;
seconds = (PassedTime div 1000) mod 60;
milliseconds = PassedTime mod 1000;


if seconds < 10 {
	seconds = "0" + string(seconds)	
} else {
	seconds = seconds;	
}