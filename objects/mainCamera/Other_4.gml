/// @description Insert description here
// You can write your code in this editor
view_enabled = true;
view_visible[0] = true;

randomize();


//room stuff
areaNameTimer = 0; //counts up to 120 frames
justEnteredRoom = true;
areaNameY = 0;

audio_stop_all();
audio_play_sound(caveMusic, 2, true);