/// @description Insert description here
// You can write your code in this editor

//PUSH Right
if(place_meeting(x - 1, y, playerObj) and playerObj.curAnim == pushR){
	pushTimer -= 1;
	//check if player is pushin for 15 frames;
	if(playerObj.currentlyFacing == "right" and pushTimer <= 0){
		//check for collision agains next cell.
		if(place_empty(self.x + 16, y, wallObj)){
			x += 16;
			pushTimer = 15;
		}
	}
}


//PUSH Left
if(place_meeting(x + 1, y, playerObj) and playerObj.curAnim == pushL){
	pushTimer -= 1;
	//check if player is pushin for 15 frames;
	if(playerObj.currentlyFacing == "left" and pushTimer <= 0){
		//check for collision agains next cell.
		if(place_empty(self.x - 16, y, wallObj)){
			x -= 16;
			pushTimer = 15;
		}
	}
}

//PUSH Up
if(place_meeting(x, y + 1, playerObj) and playerObj.curAnim == pushU){
	pushTimer -= 1;
	//check if player is pushin for 15 frames;
	if(playerObj.currentlyFacing == "up" and pushTimer <= 0){
		//check for collision agains next cell.
		if(place_empty(self.x, y - 16, wallObj)){
			y -= 16;
			pushTimer = 15;
		}
	}
}

//PUSH Up
if(place_meeting(x, y - 1, playerObj) and playerObj.curAnim == pushD){
	pushTimer -= 1;
	//check if player is pushin for 15 frames;
	if(playerObj.currentlyFacing == "down" and pushTimer <= 0){
		//check for collision agains next cell.
		if(place_empty(self.x, y + 16, wallObj)){
			y += 16;
			pushTimer = 15;
		}
	}
}

if(distance_to_object(playerObj) >= 2){
	self.pushTimer = 15;
};