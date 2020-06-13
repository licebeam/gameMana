/// @description Insert description here
// You can write your code in this editor

self.hitbox = instance_create_depth(self.x, self.y, -2, lanceHitBox);

switch (playerObj.currentlyFacing){
	case "up":
		image_xscale = 1;
		self.x = self.x + 4;
		self.y = self.y - 6
		image_angle = 90;
	break
	case "down":
		image_xscale = -1;
		self.y = self.y + 20;
		self.x = self.x + 4;
		image_angle = 90;
	break
	case "right":
		image_xscale = 1;
		self.y = self.y + 12;
		self.x = self.x + 12;
	break
	case "left":
		image_xscale = -1
		self.y = self.y + 12;
		self.x = self.x - 12;
	break
}

with self.hitbox{
	switch (playerObj.currentlyFacing){
	case "up":
		image_xscale = 1;
		self.x = self.x + 4;
		self.y = self.y - 6
		image_angle = 90;
	break
	case "down":
		image_xscale = -1;
		self.y = self.y + 20;
		self.x = self.x + 4;
		image_angle = 90;
	break
	case "right":
		image_xscale = 1;
		self.y = self.y + 12;
		self.x = self.x + 12;
	break
	case "left":
		image_xscale = -1
		self.y = self.y + 12;
		self.x = self.x - 12;
	break
	}
}

//collision stuff
var myId = id;
var myDamage = 1;

with(self.hitbox){
	hbParent = myId;
	damage = myDamage;
	lifespan = 4
}

//instance lifespan
lifespan = 4; //2 frames