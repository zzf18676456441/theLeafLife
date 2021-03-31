// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function on_click_next(){
	if (room_exists(room_next(room))) {
		room_goto_next();
	}
}