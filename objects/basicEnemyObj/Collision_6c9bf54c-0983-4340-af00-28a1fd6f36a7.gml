/// @description Insert description here
// You can write your code in this editor

createSmokePuffs(x, y);
//PUSH BACK CODE
switch(playerObj.currentlyFacing){
	case "left":
		knockBackDir = "left";
		knockBackTimer = 10;
	break;
	
	case "right":
		knockBackDir = "right";
		knockBackTimer = 10;
	break;

	case "up":
		knockBackDir = "up";
		knockBackTimer = 10;
	break;
	
	case "down":
		knockBackDir = "down";
		knockBackTimer = 10;
	break;
}

//setAttackRangeLow then return.
attackRangeMax = aggroRange;
alarm[1] = aggroTimer;