/// @description Insert description here
// You can write your code in this editor
// Draw the surface or create a new one
// Be sure to use views, even if it isn't necessary for your game
// This trick bypasses an issue with resizing the game window
// DX requires that surfaces be destroyed when resizing
if(paused){
	draw_sprite_ext(pauseSprite, 0, camera_get_view_x(view), camera_get_view_y(view), 1 / 3, 1 / 3, 0, c_white, 1);
	draw_sprite_ext(roomTransition, 0, camera_get_view_x(view), camera_get_view_y(view), 1, 1, 0, c_white, 0.4);
	instance_deactivate_all(true);
	draw_set_alpha(1)
} else if(!paused){
	sprite_delete(pauseSprite);
}
