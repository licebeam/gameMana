/// @description Insert description here
// You can write your code in this editor
dialogPopUpTimer -= 1;

if(dialogPopUpTimer <= 0 and global.interactButtonPress){
	//check for dialog progression
	dialogPosition += 1;

	//when key is hit progress to next step in dialog chain
	if(dialogPosition < ds_list_size(dialogMap)){
		curLine = ds_list_find_value(dialogMap, dialogPosition)
		scribble_autotype_fade_in(curLine, 0.3, 1, false);
	}

	if(dialogPosition >= ds_list_size(dialogMap)){
		instance_destroy(self);
	}

}

show_debug_message(camera_get_view_width(view))