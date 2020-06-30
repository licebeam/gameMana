/// @description Insert description here
// You can write your code in this editor
if(global.interactButtonPress and !killScreen){
	killScreen = true;
}

if(killScreen){
	screenKillTimer -= 1;
}

if(screenKillTimer <= 0){
	saveGame();
	global.inCutScene = false;
	instance_destroy(self);
}