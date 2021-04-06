/// @description Insert description here
// You can write your code in this editor

global.grabbed = noone;

if(room = startRoom1){
	event_user(0);
	isGameStart = false;
	menuOpen = false;
}else{
	isGameStart = true;
	menuOpen = false;
}

num_total_level_1 = 4;
num_total_level_2 = 7;
num_total_level_3 = 9;

num_matched = 0;
