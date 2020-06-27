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
draw_sprite_ext(lancePickUpSpr, 0, 828, 200, 3, 3, 0, c_white, 1 );
draw_text_ext_color(806, 212, "lvl: 1", 32, 120, c_white, c_white, c_white, c_white, 1);

//Attack Bar//
draw_rectangle_color(24, 88, playerObj.attackBar + 32, 98, c_blue, c_blue, c_blue, c_blue, c_black);


//draw_rectangle_color(0,0, 160, 60,c_black, c_black, c_black, c_black, false);
//draw_set_font(mainFont);
//draw_text(0,10, "HP:");
//draw_text(40,10, string(playerObj.hp) + " / " + string(playerObj.maxHp));
//draw_text(0,30, "LVL:");
//draw_text(60,30, playerObj.level);
//draw_rectangle_color(0, 60, playerObj.currentExp,80, c_blue, c_blue, c_blue, c_blue, c_black);


//debug stuff
//draw_text(200,30, instance_count);


//activating the shader
if(global.glitchedOut){
	//if (os_device == os_macosx){
	//	shader_set(shdBktGlitchMac);
	//}else{
	shader_set(shdBktGlitch);
	//}

	//setting the resolution
	BktGlitch_set_resolution_of_application_surface();

	//passing time to the shader (making sure nothing stays static)
	BktGlitch_set_time(current_time * 0.06);

	//quickly setting all parameters at once using a preset
	BktGlitch_config_preset(BktGlitchPreset.C);

	//additional tweaking
	BktGlitch_set_jumbleness(0.02);
	BktGlitch_set_jumble_speed(.02);
	BktGlitch_set_jumble_resolution(random_range(0.2, 0.4));
	BktGlitch_set_jumble_shift(random_range(0.2, 0.4));
	BktGlitch_set_channel_shift(0.01);
	BktGlitch_set_channel_dispersion(.1);
	BktGlitch_set_rng_seed(global.seed);


	//drawing the application surface
	draw_surface(application_surface, 0, 0);

	//done using the shader
	shader_reset();
}