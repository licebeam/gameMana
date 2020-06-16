/// @description Insert description here
// You can write your code in this editor

//draw gui here
draw_rectangle_color(0,0, 160, 60,c_black, c_black, c_black, c_black, false);
draw_set_font(mainFont);
draw_text(0,10, "HP:");
draw_text(40,10, string(playerObj.hp) + " / " + string(playerObj.maxHp));
draw_text(0,30, "LVL:");
draw_text(60,30, playerObj.level);
draw_rectangle_color(0, 60, playerObj.currentExp,80, c_blue, c_blue, c_blue, c_blue, c_black);



if(justEnteredRoom == true){
	scribbleCreated =  "[scale, 3][wave]" + "Demo Caves" + "[/wave][/scale]";
	scribble_draw(160,  areaNameY, scribbleCreated);
}