/// @description Insert description here
// You can write your code in this editor

//draw gui here
draw_rectangle_color(0,0, 80, 60,c_black, c_black, c_black, c_black, false);
draw_set_font(mainFont);
draw_text(0,10, "HP:");
draw_text(40,10, playerObj.hp);
draw_text(0,30, "LVL:");
draw_text(60,30, playerObj.level);

	