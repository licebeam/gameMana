var stringOfIcon = argument0;
var _x = argument1;
var _y = argument2;

switch(argument0){
	case "lance":
	draw_sprite(swordIconSpr, 0, _x, _y);
	break;
	
	case "fire":
	draw_sprite(fireballIconSpr, 0, _x, _y);
	break;
}