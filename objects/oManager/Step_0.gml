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

if(room == infoRoom1 || room == infoRoom2 || room == infoRoom3 || room == infoRoom4 || room == infoRoom5) {
	event_user(3);
}

if(room != startRoom1) {
	var i;
	for(i = 0; i < instance_number(oLeaf1); i += 1) {
		if (instance_find(oLeaf1, i).is_matched == 1) {
			num_matched += 1;
		}
	}
	
	for(i = 0; i < instance_number(oLeaf2); i += 1) {
		if (instance_find(oLeaf2, i).is_matched == 1) {
			num_matched += 1;
		}
	}
	
	for(i = 0; i < instance_number(oLeaf3); i += 1) {
		if (instance_find(oLeaf3, i).is_matched == 1) {
			num_matched += 1;
		}
	}
	
	for(i = 0; i < instance_number(oLeaf4); i += 1) {
		if (instance_find(oLeaf4, i).is_matched == 1) {
			num_matched += 1;
		}
	}
	
	for(i = 0; i < instance_number(oLeaf5); i += 1) {
		if (instance_find(oLeaf5, i).is_matched == 1) {
			num_matched += 1;
		}
	}
	
	for(i = 0; i < instance_number(oLeaf6); i += 1) {
		if (instance_find(oLeaf6, i).is_matched == 1) {
			num_matched += 1;
		}
	}
	
	for(i = 0; i < instance_number(oLeaf7); i += 1) {
		if (instance_find(oLeaf7, i).is_matched == 1) {
			num_matched += 1;
		}
	}
	
	//show_debug_message("NUM MATCHED: " + string(num_matched));
	
	if (room == practiceRoom) {
		if (num_matched == num_total_level_1) {
			if (room_exists(room_next(room))) {
				//event_user(3);
				room_goto_next();
			}
		}
	}
	
	if (room == Room1) {
		if (num_matched == num_total_level_2) {
			if (room_exists(room_next(room))) {
				//event_user(3);
				room_goto_next();
			}
		}
	}
	
	if (room == Room2) {
		if (num_matched == num_total_level_3) {
			if (room_exists(room_next(room))) {
				//event_user(3);
				room_goto_next();
			}
		}
	}
	
	if (room == Room3) {
		if (num_matched == num_total_level_4) {
			if (room_exists(room_next(room))) {
				//event_user(3);
				room_goto_next();
			}
		}
	}
	
	if (room == Room4) {
		if (num_matched == num_total_level_5) {
			if (room_exists(room_next(room))) {
				//event_user(3);
				room_goto_next();
			}
		}
	}
	
	num_matched = 0;
}