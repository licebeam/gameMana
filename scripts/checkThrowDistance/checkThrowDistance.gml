frameCheck1 = 20;
frameReset = 65;

if(global.aButtonHeld and self.heldItem){
	switch(self.currentlyFacing){
		case "up":
				self.throwHoldTimer += 1
				if(self.throwHoldTimer == frameCheck1){
					instance_destroy(throwingBoxObj)
					self.throwBox = instance_create_depth(x, y - 12, -2, throwingBoxObj);
				}
				if(self.throwHoldTimer >= frameCheck1 and instance_exists(throwingBoxObj)){
					throwingBoxObj.y -= 1;
				}
				if(self.throwHoldTimer >= frameReset){
					instance_destroy(throwingBoxObj)
					self.throwHoldTimer = 10;
				}
		break;
		case "down":
				self.throwHoldTimer += 1
				if(self.throwHoldTimer == frameCheck1){
					instance_destroy(throwingBoxObj)
					self.throwBox = instance_create_depth(x, y + 28, -2, throwingBoxObj);
				}
				if(self.throwHoldTimer >= frameCheck1 and instance_exists(throwingBoxObj)){
					throwingBoxObj.y += 1;
				}
				if(self.throwHoldTimer >= frameReset){
					instance_destroy(throwingBoxObj)
					self.throwHoldTimer = 10;
				}
		break;
		case "left":
				self.throwHoldTimer += 1
				if(self.throwHoldTimer == frameCheck1){
					instance_destroy(throwingBoxObj)
					self.throwBox = instance_create_depth(x - 16, y + 8, -2, throwingBoxObj);
				}
				if(self.throwHoldTimer >= frameCheck1 and instance_exists(throwingBoxObj)){
					throwingBoxObj.x -= 1;
				}
				if(self.throwHoldTimer >= frameReset){
					instance_destroy(throwingBoxObj)
					self.throwHoldTimer = 10;
				}
		break;
		case "right":
				self.throwHoldTimer += 1
				if(self.throwHoldTimer == frameCheck1){
					instance_destroy(throwingBoxObj)
					self.throwBox = instance_create_depth(x + 16, y + 8, -2, throwingBoxObj);
				}
				if(self.throwHoldTimer >= frameCheck1 and instance_exists(throwingBoxObj)){
					throwingBoxObj.x += 1;
				}
				if(self.throwHoldTimer >= frameReset){
					instance_destroy(throwingBoxObj)
					self.throwHoldTimer = 10;
				}
		break;
	}
}