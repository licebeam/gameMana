//check if gamepad is connected
if(gamepad_is_connected(0) and global.GP){
	//set controller on to true
	global.controllerOn = true;
	gamepad_set_axis_deadzone(0,0.5);
}


//set buttons based on controllerOn being active

if(global.controllerOn and global.GP){
	global.haxis = gamepad_axis_value(0, gp_axislh);
	global.vaxis = gamepad_axis_value(0, gp_axislv);
	//held directionals
	global.upButtonHeld = gamepad_button_check(0, gp_padu) or global.vaxis < 0;
	global.downButtonHeld = gamepad_button_check(0, gp_padd) or global.vaxis > 0;
	global.leftButtonHeld = gamepad_button_check(0, gp_padl) or global.haxis < 0;
	global.rightButtonHeld = gamepad_button_check(0, gp_padr) or global.haxis > 0;
	//pressed directionals
	//global.upButtonPress = gamepad_button_check_pressed(0, gp_padu) or global.vaxis == -0.3;
	//global.downButtonPress = gamepad_button_check_pressed(0, gp_padd) or global.vaxis == 0.3;
	//global.leftButtonPress = gamepad_button_check_pressed(0, gp_padl);
	//global.rightButtonPress = gamepad_button_check_pressed(0, gp_padr);
	//released directionals
	global.upButtonRelease = gamepad_button_check_released(0, gp_padu) or global.vaxis == 0;
	global.downButtonRelease = gamepad_button_check_released(0, gp_padd) or global.vaxis == 0 ;
	global.leftButtonRelease = gamepad_button_check_released(0, gp_padl) or global.haxis == 0;
	global.rightButtonRelease = gamepad_button_check_released(0, gp_padr) or global.haxis == 0;
	
	///SETUP FACE BUTTONS
	//held
	global.aButtonHeld = gamepad_button_check(0, gp_face1);
	//pressed
	global.aButtonPress = gamepad_button_check_pressed(0, gp_face1);
	global.interactButtonPress = gamepad_button_check_pressed(0, gp_face4);
	global.startButtonPress = gamepad_button_check_pressed(0, gp_select);
	global.ringMenuButton = gamepad_button_check_pressed(0, gp_start);
	global.rTriggerPress = gamepad_button_check_pressed(0, gp_shoulderr) or  gamepad_button_check_pressed(0, gp_shoulderrb);
	global.lTriggerPress = gamepad_button_check_pressed(0, gp_shoulderl) or  gamepad_button_check_pressed(0, gp_shoulderlb);
	//released
	global.aButtonRelease = gamepad_button_check_released(0, gp_face1);
}


//set the value of no button
if(global.controllerOn){
	if(checkNoPadPress() and global.vaxis == 0 and global.haxis == 0){
		global.noButtonPressed = true;
	} else {
		global.noButtonPressed = false;
	}
} else {
	global.noButtonPressed = keyboard_check(vk_nokey)
}
