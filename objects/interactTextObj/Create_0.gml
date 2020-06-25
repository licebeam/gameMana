/// @description Insert description here
// You can write your code in this editor

//initiate empty dialog and fill it later with the needed text
dialogMap = ds_list_create();
ds_list_add(dialogMap, "empty");
//add displayName
displayName = "passed";
//activate game pause and screen changes - defaults to false when object is created
// set it to true when dialog activate by player
isDialogOpen = false;

//Dialog position = 0;
dialogPosition = 0;

curLine = ds_list_find_value(dialogMap, 0);
lineWidth = camera_get_view_x(view) + 320;
lineHeight = camera_get_view_y(view) + 80;
nameWidth = scribble_get_width(displayName) + 16;

global.inCutScene = true;