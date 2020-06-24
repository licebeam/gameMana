/// @description Insert description here
// You can write your code in this editor

if not paused{
	paused = true;
	gpu_set_blendmode(bm_normal);
	pauseSprite = sprite_create_from_surface(application_surface, 0, 0, room_width * 3, room_height * 3, 0, 0, 0, 0);
}