/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape)){
	if(isGameStart){
		menuOpen = !menuOpen;
	
		if(menuOpen)
			//pause game and open the menue 
			event_user(2);
		else
			event_user(1);
	}

}