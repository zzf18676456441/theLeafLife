
function on_click_restart(){
	var i;
	for(i = 0; i < instance_number(oLeaf1); i+= 1) {
		obj = instance_find(oLeaf1, i);
		obj.is_matched = 0;
		obj.x = obj.xstart;
		obj.y = obj.ystart;
	}
	
	for(i = 0; i < instance_number(oLeaf2); i+= 1) {
		obj = instance_find(oLeaf2, i);
		obj.is_matched = 0;
		obj.x = obj.xstart;
		obj.y = obj.ystart;
	}
	
	for(i = 0; i < instance_number(oLeaf3); i+= 1) {
		obj = instance_find(oLeaf3, i);
		obj.is_matched = 0;
		obj.x = obj.xstart;
		obj.y = obj.ystart;
	}
	
	for(i = 0; i < instance_number(oLeaf4); i+= 1) {
		obj = instance_find(oLeaf4, i);
		obj.is_matched = 0;
		obj.x = obj.xstart;
		obj.y = obj.ystart;
	}
	
	for(i = 0; i < instance_number(oLeaf5); i+= 1) {
		obj = instance_find(oLeaf5, i);
		obj.is_matched = 0;
		obj.x = obj.xstart;
		obj.y = obj.ystart;
	}
	
	for(i = 0; i < instance_number(oLeaf6); i+= 1) {
		obj = instance_find(oLeaf6, i);
		obj.is_matched = 0;
		obj.x = obj.xstart;
		obj.y = obj.ystart;
	}
	
	for(i = 0; i < instance_number(oLeaf7); i+= 1) {
		obj = instance_find(oLeaf7, i);
		obj.is_matched = 0;
		obj.x = obj.xstart;
		obj.y = obj.ystart;
	}
	
	for(i = 0; i < instance_number(oLeaf1_Outline); i+= 1) {
		obj = instance_find(oLeaf1_Outline, i);
		obj.has_match = 0;
	}
	
	for(i = 0; i < instance_number(oLeaf2_Outline); i+= 1) {
		obj = instance_find(oLeaf2_Outline, i);
		obj.has_match = 0;
	}
	
	for(i = 0; i < instance_number(oLeaf3_Outline); i+= 1) {
		obj = instance_find(oLeaf3_Outline, i);
		obj.has_match = 0;
	}
	
	for(i = 0; i < instance_number(oLeaf4_Outline); i+= 1) {
		obj = instance_find(oLeaf4_Outline, i);
		obj.has_match = 0;
	}
	
	for(i = 0; i < instance_number(oLeaf5_Outline); i+= 1) {
		obj = instance_find(oLeaf5_Outline, i);
		obj.has_match = 0;
	}
	
	for(i = 0; i < instance_number(oLeaf6_Outline); i+= 1) {
		obj = instance_find(oLeaf6_Outline, i);
		obj.has_match = 0;
	}
	
	for(i = 0; i < instance_number(oLeaf7_Outline); i+= 1) {
		obj = instance_find(oLeaf7_Outline, i);
		obj.has_match = 0;
	}
	
	instance_destroy(oButton);
}