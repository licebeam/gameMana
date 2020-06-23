/// @description Insert description here
// You can write your code in this editor
//Offsets
if(playerObj.y <= bbox_top){
	self.y -= 180;
}

if(playerObj.y >= bbox_bottom){
	self.y += 180;
}

if(playerObj.x >= bbox_right){
	self.x += 320;
}

if(playerObj.x <= bbox_left){
	self.x -= 320;
}
//if(playerObj.y >= bbox_bottom){
//	self.y = bbox_bottom;
//}


//180 W 320 H

if(timerForAreaText >= -600){
 timerForAreaText -= 3
}