//SUPPORT CONTROLS GAME SETTINGS
global.showDebug = false;
global.controllerOn = false;
global.GP = gamepad_is_supported();
//held buttons
global.upButtonHeld = noone;
global.downButtonHeld = noone;
global.leftButtonHeld = noone;
global.rightButtonHeld = noone;
//press buttons
global.upButtonPress = noone;
global.downButtonPress = noone;
global.leftButtonPress = noone;
global.rightButtonPress = noone;
//release buttons
global.upButtonRelease = noone;
global.downButtonRelease = noone;
global.leftButtonRelease = noone;
global.rightButtonRelease = noone;

//face buttons
global.aButtonHeld = noone;
global.aButtonPress = noone;
global.aButtonRelease = noone;
global.a2ButtonHeld = noone;
global.a2ButtonPress = noone;
global.a2ButtonRelease = noone;
global.startButtonPress = noone;

global.rTriggerPress = noone;
global.lTriggerPress = noone;
// axis
global.haxis = noone;
global.vaxis = noone;