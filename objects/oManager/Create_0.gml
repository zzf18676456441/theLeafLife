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