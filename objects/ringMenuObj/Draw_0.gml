/// @description Insert description here
// You can write your code in this editor
for(i = 0; i <= (ds_list_size(ringItems) - 1); i++){
	if(i == 6){
		//scribbleCreated =  "[coolFont][rainbow]" + ds_list_find_value(ringItems, i) + "[/rainbow][/font]";
		draw_sprite(weaponIconGoldUiSpr,0,playerObj.x + lengthdir_x(dist, i * -360 / ds_list_size(ringItems)), playerObj.y + lengthdir_y(dist, i * -360 / ds_list_size(ringItems)));
		drawRingIcons(ds_list_find_value(ringItems, i),playerObj.x + lengthdir_x(dist, i * -360 / ds_list_size(ringItems)), playerObj.y + lengthdir_y(dist, i * -360 / ds_list_size(ringItems)))
		//scribble_draw(playerObj.x + lengthdir_x(dist, i * -360 / ds_list_size(ringItems)), playerObj.y + lengthdir_y(dist, i * -360 / ds_list_size(ringItems)), scribbleCreated);
	} else {
		draw_sprite(weaponIconUiSpr,0,playerObj.x + lengthdir_x(dist, i * -360 / ds_list_size(ringItems)), playerObj.y + lengthdir_y(dist, i * -360 / ds_list_size(ringItems)));
		drawRingIcons(ds_list_find_value(ringItems, i),playerObj.x + lengthdir_x(dist, i * -360 / ds_list_size(ringItems)), playerObj.y + lengthdir_y(dist, i * -360 / ds_list_size(ringItems)))
	}
}


//if (dir >= 360) dir -= 360;


