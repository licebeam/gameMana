/// @description Insert description here
// You can write your code in this editor

if(global.lTriggerPress){
	ds_list_insert(ringItems, ds_list_size(ringItems), ds_list_find_value(ringItems, 0));
	ds_list_delete(ringItems, 0);
} else if(global.rTriggerPress){
	ds_list_insert(ringItems, 0, ds_list_find_value(ringItems, ds_list_size(ringItems) -1));
	ds_list_delete(ringItems, ds_list_size(ringItems) -1);
}

if(self.isOpening and dist >= 27){
	dist -= 5;
}

if(self.isOpening and dist <= 26){
	self.isOpening = false;
}


if(self.closing){
	closeTimer += 2;
	dist += closeTimer;
}

if(closeTimer >= 30){
	instance_destroy(self);
}

if(global.aButtonPress and !self.closing and !self.isOpening){
	show_debug_message("equipping");
	show_debug_message(ds_list_find_value(ringItems, 6));
	playerObj.currentWeapon = ds_list_find_value(ringItems, 6);
}

if(global.a2ButtonPress and !self.closing and !self.isOpening){
	show_debug_message("equipping");
	show_debug_message(ds_list_find_value(ringItems, 6));
	playerObj.secondaryWeapon = ds_list_find_value(ringItems, 6);
}