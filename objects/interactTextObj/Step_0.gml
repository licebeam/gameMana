/// @description Insert description here
// You can write your code in this editor
dialogPopUpTimer -= 1;

if(dialogPopUpTimer <= 0 and global.interactButtonPress and !instance_exists(saveGameScreenObj)){
	//check for dialog progression
	dialogPosition += 1;

	//when key is hit progress to next step in dialog chain
	if(dialogPosition < ds_list_size(dialogMap)){
		curLine = ds_list_find_value(dialogMap, dialogPosition)
		scribble_autotype_fade_in(curLine, 0.3, 1, false);
	}
}

if(dialogPosition >= ds_list_size(dialogMap)){
	ds_list_clear(dialogMap);
	global.inCutScene = false;
	destroyTimer -= 1;
}

if(destroyTimer <= 0){
	if(isSave){
		show_debug_message("opening save menu");
		instance_create_depth(0, 0, -1000, saveGameScreenObj);
	}
	instance_destroy(self);
}