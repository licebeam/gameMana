/// @description Insert description here
// You can write your code in this editor


//when key is hit progress to next step in dialog chain
dialogPosition += 1;
curLine = ds_list_find_value(dialogMap, dialogPosition)
scribble_autotype_fade_in(curLine, 0.3, 1, false);
if(dialogPosition >= ds_list_size(dialogMap) -1){
	instance_destroy(self);
}
