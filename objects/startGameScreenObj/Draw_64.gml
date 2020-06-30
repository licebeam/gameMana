/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(roomTransition, 0, camera_get_view_x(view), camera_get_view_y(view), 1, 1, 0, c_white, 1);
draw_text(0, 0, "Start Screen alpha");
draw_text(0, 32, "press interact to start game");

if(menuOptionSelected == 0){
	draw_rectangle_color(0,64, 64, 86, c_orange, c_orange, c_olive, c_olive, false);
}

if(menuOptionSelected == 1){
	draw_rectangle_color(0,96, 64, 118, c_orange, c_orange, c_olive, c_olive, false);
}

draw_text(0, 64, "new game");
draw_text(0, 96, "load game");