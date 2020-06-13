/// @description Insert description here
// You can write your code in this editor
alarm[0] = 1;
if(grabableRock.attackable){
	grabableRock.attackable = false;
	grabableRock.alarm[0] = 8;
	with(wallBlockObj){
		isClosed = !isClosed;
	}

	with(wallBlockOpenObj){
		isClosed = !isClosed;
	}
}