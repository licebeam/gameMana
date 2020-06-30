/// @description Insert description here
// You can write your code in this editor

//check how close player is so that they can activate dialog;
if(distance_to_object(playerObj) <= 3  and !instance_exists(popInstance) and !instance_exists(interactTextObj)){
	popInstance = instance_create_depth(x, y - 8, -2, textPopObj);
}

if(distance_to_object(playerObj) >= 3 and instance_exists(popInstance)){
	instance_destroy(popInstance);
}

if(distance_to_object(playerObj) <= 3 and global.interactButtonPress and !instance_exists(interactTextObj) and !instance_exists(saveGameScreenObj)){
	//set text object to open

			with(instance_create_depth(x,y,-2,interactTextObj)){
				ds_list_clear(dialogMap);
				isDialogOpen = true;
				//set dialo to the dialog in parent
				dialogPopUpTimer = 12;
				displayName = "Sign";
				ds_list_add(dialogMap, "[coolFont][wave]" + "cool"+ "[/wave][/font]");
				ds_list_add(dialogMap, "Are you reading this dialog?");
				ds_list_add(dialogMap, "Perhaps this won't destroy the screen if I were to make it long but use word breaks?");
				curLine = ds_list_find_value(dialogMap, dialogPosition)
				nameWidth = scribble_get_width(displayName) + 16;
				lineWidth = camera_get_view_x(view) + 320;
				lineHeight = camera_get_view_y(view) + 80;
				scribble_set_wrap(camera_get_view_width(view) - 16, camera_get_view_y(view) + lineHeight);
				scribble_autotype_fade_in(curLine, 0.3, 1, false);
			}
}