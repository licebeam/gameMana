/// @description Insert description here
// You can write your code in this editor
view_enabled = true;
view_visible[0] = true;

randomize();

audio_stop_all();
//audio_play_sound(caveMusic, 2, true);



//set ShadowTiles to low salpha


//draw room transition
instance_create_depth(0, 0, -1000, roomTransitionObj);