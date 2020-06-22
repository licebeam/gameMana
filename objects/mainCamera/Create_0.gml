/// @description Insert description here
// You can write your code in this editor
view_width = 1920 / 6;
view_height = 1080 / 6; 

window_scale = 3;

window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);


isScreenShake = false;

//Scribble code?
//Start initialisation:
//  The font directory is set as the root of the sandbox
//  The default font is set as "fnt_dialogue"
//  Automatic scanning for fonts ("autoscan") is turned off
scribble_init("fonts", "numFont", true);
scribble_bake_outline("numFont", "coolFont", 2, 1, c_black, false);
scribble_set_starting_format("coolFont", c_white, 0);

//Area name 
areaNameTimer = 0; //counts up to 120 frames
justEnteredRoom = true;
areaNameY = 0;


heart2X = 0;