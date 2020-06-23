/// @description Insert description here
// You can write your code in this editor

//draw gui here
draw_set_font(mainFont);
draw_text_ext_color(90, 0, "- HP -", 32, 120, c_white, c_white, c_white, c_white, 1);
for(i = 0; i < playerObj.hp; i +=1){
	if(i <= 8){
		draw_sprite_ext(heartSpr, 0, 32 + (i * 24), 32, 3, 3, 0, c_white, 1 );
	} else if (i >= 9){
		draw_sprite_ext(heartSpr, 0, (32 + (i * 24)) - 216, 56, 3, 3, 0, c_white, 1 );
	}
}
draw_sprite_ext(goldSpr, 0, 300, 32, 3, 3, 0, c_white, 1 );
draw_text_ext_color(292, 46, 0, 32, 32, c_white, c_white, c_white, c_white, 1);

draw_sprite_ext(arrowUiSpr, 0, 332, 32, 3, 3, 0, c_white, 1 );
draw_text_ext_color(324, 46, 0, 32, 32, c_white, c_white, c_white, c_white, 1);

draw_sprite_ext(keySpr, 0, 364, 32, 3, 3, 0, c_white, 1 );
draw_text_ext_color(358, 46, 0, 32, 32, c_white, c_white, c_white, c_white, 1);

//Mana
draw_set_font(mainFont);
draw_text_ext_color(790, 0, "- MP -", 32, 120, c_white, c_white, c_white, c_white, 1);
for(i = 0; i < playerObj.mp; i +=1){
	if(i <= 8){
		draw_sprite_ext(manaUiSpr, 0, 732 + (i * 24), 32, 3, 3, 0, c_white, 1 );
	} else if (i >= 9){
		draw_sprite_ext(manaUiSpr, 0, (732 + (i * 24)) - 216, 56, 3, 3, 0, c_white, 1 );
	}
}

//draw_sprite_ext(weaponIconUiSpr, 0, 832, 500, 3, 3, 0, c_white, 0.8 );
//draw_sprite_ext(weaponIconUiSpr, 0, 876, 460, 3, 3, 0, c_white, 0.8 );
//draw_sprite_ext(weaponIconUiSpr, 0, 920, 500, 3, 3, 0, c_white, 0.8 );
//draw weapons on top
draw_sprite_ext(lancePickUpSpr, 0, 828, 502, 3, 3, 0, c_white, 1 );
draw_text_ext_color(806, 514, "lvl: 1", 32, 120, c_white, c_white, c_white, c_white, 1);

//Attack Bar//
draw_rectangle_color(24, 88, playerObj.attackBar + 32, 98, c_blue, c_blue, c_blue, c_blue, c_black);


//draw_rectangle_color(0,0, 160, 60,c_black, c_black, c_black, c_black, false);
//draw_set_font(mainFont);
//draw_text(0,10, "HP:");
//draw_text(40,10, string(playerObj.hp) + " / " + string(playerObj.maxHp));
//draw_text(0,30, "LVL:");
//draw_text(60,30, playerObj.level);
//draw_rectangle_color(0, 60, playerObj.currentExp,80, c_blue, c_blue, c_blue, c_blue, c_black);



if(justEnteredRoom == true){
	scribbleCreated =  "[scale, 3][wave]" + "Demo Caves" + "[/wave][/scale]";
	scribble_draw(160,  areaNameY, scribbleCreated);
}



//debug stuff
//draw_text(200,30, instance_count);