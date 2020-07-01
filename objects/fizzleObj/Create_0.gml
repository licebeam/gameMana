/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
self.animationFrames = 3;

switch (playerObj.currentlyFacing){
	case "up":
		image_xscale = -1;
		//self.x = self.x + 8;
		self.y = self.y - 6
		image_angle = 180;
		vspd = -3;
	break
	case "down":
		image_xscale = -1;
		self.y = self.y + 16;
		vspd = 3;
	break
	case "right":
		image_xscale = 1;
		self.y = self.y + 8;
		self.x = self.x + 8;
		image_angle = 90;
		hspd = 3;
	break
	case "left":
		image_xscale = -1
		self.y = self.y + 8;
		self.x = self.x - 8;
		image_angle = -90;
		hspd = -3
	break
}


//instance lifespan
lifespan = 30; //2 frames