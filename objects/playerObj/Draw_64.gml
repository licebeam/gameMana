/// @description debug draw
// You can write your code in this editor

if(global.showDebug){
	draw_text(400, 400, global.GP)
	draw_text(400, 418, gamepad_get_device_count())
	draw_text(400, 438, gamepad_is_connected(0))
	
	
	draw_text(400, 458, global.upButtonHeld)
	draw_text(330, 458, global.upButtonPress);
	draw_text(330, 488, global.upButtonRelease);
	draw_text(412, 458, global.downButtonHeld)
	draw_text(424, 458, global.leftButtonHeld)
	draw_text(436, 458, global.rightButtonHeld)
	
	draw_text(424, 478, global.haxis);
	draw_text(474, 478, global.vaxis);
	
	draw_text(474, 498, global.noButtonPressed);
}
