/// @description Insert description here
// You can write your code in this editor

//check how close player is so that they can activate dialog;
if(distance_to_object(playerObj) <= 1 and keyboard_check_pressed(ord("P")) and !instance_exists(interactTextObj)){
	//set text object to open
			with(instance_create_depth(x,y,-2,interactTextObj)){
				isDialogOpen = true;
				//set dialo to the dialog in parent
				displayName = "testName";
				ds_list_clear(dialogMap)	;
				ds_list_add(dialogMap, "[coolFont][wave]" + "cool"+ "[/wave][/font]");
				ds_list_add(dialogMap, "should be adde12312312d");
				ds_list_add(dialogMap, "should be adde111111133dasdasdaddasddsdasd");
				curLine = ds_list_find_value(dialogMap, dialogPosition)
				scribble_autotype_fade_in(curLine, 0.3, 1, false);
			}
}