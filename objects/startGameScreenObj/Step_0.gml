/// @description Insert description here
// You can write your code in this editor
if(instance_exists(gameController)){
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
	
	if(inputTimer >= 1 and movingToNextOption){
		inputTimer -= 1;
	}
	
	if(movingToNextOption and inputTimer <= 0){
		menuOptionSelected += menuDirection;
		inputTimer = 3;
		movingToNextOption = false;
	}

	if(global.leftButtonHeld){
		movingToNextOption = true
		inputTimer = 3;
		menuDirection = 1;
	}

	if(global.rightButtonHeld){
		movingToNextOption = true
		inputTimer = 8;
		menuDirection = -1;
	}

	if(menuOptionSelected < 0){
		menuOptionSelected = 1;
	}

	if(menuOptionSelected > 1){
		menuOptionSelected = 0;
	}
}