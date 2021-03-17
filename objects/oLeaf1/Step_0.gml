// While LMB is held, drag object
if (global.grabbed == self && is_matched != 1) {
	id.x = mouse_x;
	id.y = mouse_y;
	
	// Rotate the leaf with A and D keys
	if (keyboard_check(ord("A"))) {
		if(id.image_angle > 360) {
			id.image_angle = 0
		}
		id.image_angle += 2;
	}
	if (keyboard_check(ord("D"))) {
		if(id.image_angle < 0) {
			id.image_angle = 360
		}
		id.image_angle -= 2;
	}
}

// Match this object with its outline if conditions are met (proper rotation, relatively close position, etc.)
var list = ds_list_create();
var num = instance_place_list(id.x, id.y, oLeaf1_Outline, list, false);
if (num > 0) {
	for(var i = 0; i <= num; i += 1) {
		var obj = instance_find(oLeaf1_Outline, i);
		if(place_meeting(id.x, id.y, obj)) {
			if ((point_distance(id.x, id.y, obj.x, obj.y) < 15) && (abs(id.image_angle - obj.image_angle) < 5)) {
				id.x = obj.x;
				id.y = obj.y;
				id.image_angle = obj.image_angle;
				//obj.has_match = 1;
				is_matched = 1;
			} else {
				//obj.has_match = 0;
				//is_matched = 0;
			}
		}
	}
	
}
ds_list_destroy(list);

// If the player is incorrect, place the leaf back at its original position
if (mouse_check_button_released(mb_left)) {
	if (is_matched == 0) {
		global.grabbed = noone;
		id.x = id.xstart;
		id.y = id.ystart;
	}
}