/// @description Insert description here
// You can write your code in this editor


//draw the line of dialog on the screen and make a noise for each character
//using scribble.

if(dialogPopUpTimer <= 0){
	if(ds_list_size(dialogMap)){
		//draw name
		draw_roundrect_color_ext(camera_get_view_x(view), camera_get_view_y(view) + 135, camera_get_view_x(view) + nameWidth, camera_get_view_y(view) + 145, 8, 8, c_black, c_black, false);
		scribble_draw(camera_get_view_x(view) + 8 ,camera_get_view_y(view) + 138, displayName);
		//draw dialog box based on size of text;
		draw_roundrect_color_ext(camera_get_view_x(view), camera_get_view_y(view) + 145, camera_get_view_x(view) + 320, camera_get_view_y(view) + 180, 8, 8, c_black, c_black, false);
		//draw icon indicating the key of which the player should hit to progress in dialog.
		scribble_draw(camera_get_view_x(view) + 8, camera_get_view_y(view) + 153, curLine);
	}
}