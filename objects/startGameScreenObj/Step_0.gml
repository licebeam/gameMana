/// @description Insert description here
// You can write your code in this editor
if(global.interactButtonPress and !killScreen){
	killScreen = true;
}

if(killScreen){
	screenKillTimer -= 1;
}

if(screenKillTimer <= 0 and menuOptionSelected == 0){
	//saveGame();
	room_goto(1);
	global.inCutScene = false;
	instance_destroy(self);
}

if(screenKillTimer <= 0 and menuOptionSelected == 1){
	//saveGame();
	loadGame()
	global.inCutScene = false;
	instance_destroy(self);
}


if(global.leftButtonHeld){
	menuOptionSelected -= 1;
}

if(global.rightButtonHeld){
	menuOptionSelected -= 1;
}

if(menuOptionSelected < 0){
	menuOptionSelected = 1;
}

if(menuOptionSelected > 1){
	menuOptionSelected = 0;
}