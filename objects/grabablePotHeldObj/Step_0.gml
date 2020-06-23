/// @description Insert description here
// You can write your code in this editor

if(!thrown){
	self.x = playerObj.x;
	self.y = playerObj.y - 8;
} else {
	throwFrames -= 1
	if(throwFrames >= 1){
		switch (throwDirection){
		case "up":
			self.y -= 3;
		break
		case "down":
			self.y += 3;
		break
		case "right":
			self.x += 3;
		break
		case "left":
			self.x -= 3;
		break
		}	
	}
}

if(throwFrames <= 0){
	createExplosiveChunks(x,y);
	instance_destroy(self);
}