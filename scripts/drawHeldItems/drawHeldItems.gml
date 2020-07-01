switch(playerObj.currentWeapon){
	case "lance":
		draw_sprite_ext(lancePickUpSpr, 0, 462, 32, 3, 3, 0, c_white, 1 );
		//draw_text_ext_color(452, 54, "lvl: 1", 32, 120, c_white, c_white, c_white, c_white, 1);
	break;
	
	case "fire":
		draw_sprite_ext(fireballIconSpr, 0, 462, 32, 3, 3, 0, c_white, 1 );
		//draw_text_ext_color(452, 54, "lvl: 1", 32, 120, c_white, c_white, c_white, c_white, 1);
	break;

}


switch(playerObj.secondaryWeapon){
	case "lance":
		draw_sprite_ext(lancePickUpSpr, 0, 584, 32, 3, 3, 0, c_white, 1 );
		//draw_text_ext_color(574, 54, "lvl: 1", 32, 120, c_white, c_white, c_white, c_white, 1);
	break;
	
	case "fire":
		draw_sprite_ext(fireballIconSpr, 0, 584, 32, 3, 3, 0, c_white, 1 );
		//draw_text_ext_color(574, 54, "lvl: 1", 32, 120, c_white, c_white, c_white, c_white, 1);
	break;

}



//Attack Bar//