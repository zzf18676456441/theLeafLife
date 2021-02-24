// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function on_click_start() {
	oManager.isGameStart = true;
	instance_destroy(oButton);
	//room_goto_next();
	SlideTransition(TRANS_MODE.NEXT);
}