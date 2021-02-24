// While LMB is held, drag object
if (mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
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
var inst;
inst = instance_position(id.x, id.y, oOutlineLeaf2);
if (inst != noone) {
	if ((point_distance(id.x, id.y, inst.x, inst.y) < 15) && (abs(id.image_angle - inst.image_angle) < 5)) {
		id.x = inst.x;
		id.y = inst.y;
		id.image_angle = inst.image_angle;
		inst.has_match = 1;
		is_matched = 1;
	} else {
		inst.has_match = 0;
		is_matched = 0;
	}
}
//var i;
//for (i = 0; i < instance_number(oOutlineLeaf2); i +=1 ) {
	//outline = instance_find(oOutlineLeaf2, i);
	
//}

// If the player is incorrect, place the leaf back at its original position
if (mouse_check_button_released(mb_left)) {
	if (is_matched == 0) {
		id.x = id.xstart;
		id.y = id.ystart;
	}
}