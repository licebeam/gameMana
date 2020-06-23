//Initiate Player Controller
if(self.state == "none" and self.attackState == "none"){
		
		if(keyboard_check(ord("D"))){
			if(self.heldItem){
				self.curAnim = playerCarryR;
			} else {
				self.curAnim = playerWalkR;
				if(place_meeting(x + 1, y, wallObj)){
					self.curAnim = pushR;
				}
			}
			hspd = playerMoveSpeed;
			self.currentlyFacing = "right"
		}
	
		if(keyboard_check(ord("A"))){
			if(self.heldItem){
				self.curAnim = playerCarryL;
			} else {
				self.curAnim = playerWalkL;
				if(place_meeting(x - 1, y, wallObj)){
					self.curAnim = pushL;
				}
			}
			hspd = -playerMoveSpeed;
			self.currentlyFacing = "left"
		}
		
		if(keyboard_check(ord("W"))){
			if(self.heldItem){
				self.curAnim = playerCarryU;
			} else {
				self.curAnim = playerWalkUp;
				if(place_meeting(x, y - 1, wallObj)){
					self.curAnim = pushU;
				}
			}
			vspd = -playerMoveSpeed;
			self.currentlyFacing = "up"
		}
		
		if(keyboard_check(ord("S"))){
			if(self.heldItem){
				self.curAnim = playerCarryD;
			} else {			
				self.curAnim = playerWalkDown;
				if(place_meeting(x, y + 1, wallObj)){
					self.curAnim = pushD;
				}
			}
			vspd = playerMoveSpeed;
			self.currentlyFacing = "down"
		}
		
		
		///FACING CODE
		if(keyboard_check_pressed(ord("D"))){
				hspd = 0;
				vspd = 0;
				self.currentlyFacing = "right"
				instance_create_depth(x, y + 8, -2, smokePuffEffect);
				resetThrow();
		}
	
		if(keyboard_check_pressed(ord("A"))){ 
				hspd = 0;
				vspd = 0;
				self.currentlyFacing = "left"
				instance_create_depth(x, y + 8, -2, smokePuffEffect);
				resetThrow();
		}
		
		if(keyboard_check_pressed(ord("W"))){ 
				hspd = 0;
				vspd = 0;
				self.currentlyFacing = "up"
				instance_create_depth(x, y + 8, -2, smokePuffEffect);
				resetThrow();
		}
		
		if(keyboard_check_pressed(ord("S"))){ 
				hspd = 0;
				vspd = 0;
				self.currentlyFacing = "down"
				instance_create_depth(x, y + 8, -2, smokePuffEffect);
				resetThrow();
		}		
		//
		
		//releae key stop hspd / vspd
				///FACING CODE
		if(keyboard_check_released(ord("D"))){
				hspd = 0;
		}
	
		if(keyboard_check_released(ord("A"))){ 
				hspd = 0;
		}
		
		if(keyboard_check_released(ord("W"))){ 
				vspd = 0;
		}
		
		if(keyboard_check_released(ord("S"))){ 
				vspd = 0;
		}		
		//

	
		if(keyboard_check_pressed(self.jabButton) and self.attackState != "normalMove"){
			hspd = 0;
			vspd = 0;
			switch(self.currentlyFacing){
				case "up":
				if(place_meeting(x, y - 2, grabablePot) and !self.heldItem){
					self.curGrab = instance_place(x, y - 2, grabablePot);
					self.curAnim = pullU;
					self.heldItem = setHeldItem(self.curGrab.object_index);
					generateHeldItem(self.curGrab.object_index);
					with(curGrab){
						instance_destroy(self)
					}
				} else if(self.heldItem){
					show_debug_message("holding");
				} else {
					self.curAnim = playerAttackU;					
				}
				break;
					
				case "down":
				if(place_meeting(x, y + 2, grabablePot) and !self.heldItem){
					self.curGrab = instance_place(x, y + 2 , grabablePot);
					self.curAnim = pullD;
					self.heldItem = setHeldItem(self.curGrab.object_index);
					generateHeldItem(self.curGrab.object_index);
					with(curGrab){
						instance_destroy(self)
					}
				} else if(self.heldItem){
					show_debug_message("holding");
				} else {
					self.curAnim = playerAttackD;		
				}
				break;
					
				case "right":
				if(place_meeting(x + 2, y, grabablePot) and !self.heldItem){
					self.curGrab = instance_place(x + 2, y, grabablePot);
					self.curAnim = pullR;
					self.heldItem = setHeldItem(self.curGrab.object_index);
					generateHeldItem(self.curGrab.object_index);
					with(curGrab){
						instance_destroy(self)
					}
				} else if(self.heldItem){
					show_debug_message("holding");
				} else {
					self.curAnim = playerAttackR;					
				}
				break;
					
				case "left":
				if(place_meeting(x - 2, y, grabablePot) and !self.heldItem){
					self.curGrab = instance_place(x - 2, y, grabablePot);
					self.curAnim = pullL;
					self.heldItem = setHeldItem(self.curGrab.object_index);
					generateHeldItem(self.curGrab.object_index);
					with(curGrab){
						instance_destroy(self)
					}
				} else if(self.heldItem){
					show_debug_message("holding");
				} else {
					self.curAnim = playerAttackL;					
				}
				break;
			}
			self.attackState = "normalMove";
		}
		
		// this section prevents animation overlap causing buttons to fire off animations on loop
		//check nuetral states
		//check nuetral states
		if(keyboard_check(self.jabButton) and self.attackState == "none"){
				switch(self.currentlyFacing){
					case "up":
					if(self.heldItem){
						self.curAnim = playerCarryU;
					}else{
						self.curAnim = playerNU;
					}
					self.animationFrames = 2;
					break;
					
					case "down":
					if(self.heldItem){
						self.curAnim = playerCarryDNSpr;
					}else{
						self.curAnim = playerND;
					}
					//self.animationFrames = 2;
					break;
					
					case "right":
					if(self.heldItem){
						self.curAnim = playerCarryRNSpr;
					}else{
						self.curAnim = playerNR;
					}
					self.animationFrames = 2;
					break;
					
					case "left":
					if(self.heldItem){
						self.curAnim = playerCarryLNSpr;
					}else{
						self.curAnim = playerNL;
					}
					self.animationFrames = 2;
					break;
				}
			hspd = 0;
			vspd = 0;
		}
		//check nue

		if(keyboard_check(vk_nokey)){
			hspd = 0;
			vspd = 0;
				switch(self.currentlyFacing){
					case "up":
					if(self.heldItem){
						self.curAnim = playerCarryU;
					}else{
						self.curAnim = playerNU;
					}
					self.animationFrames = 2;
					break;
					
					case "down":
					if(self.heldItem){
						self.curAnim = playerCarryDNSpr;
					}else{
						self.curAnim = playerND;
					}
					//self.animationFrames = 2;
					break;
					
					case "right":
					if(self.heldItem){
						self.curAnim = playerCarryRNSpr;
					}else{
						self.curAnim = playerNR;
					}
					self.animationFrames = 2;
					break;
					
					case "left":
					if(self.heldItem){
						self.curAnim = playerCarryLNSpr;
					}else{
						self.curAnim = playerNL;
					}
					self.animationFrames = 2;
					break;
				}
		}
}


//Check if charging throw
checkThrowDistance();


//check for throw release?
if(keyboard_check_released(jabButton) and self.heldItem and instance_exists(throwingBoxObj) and self.canThrow){
	switch(self.currentlyFacing){
		case "up":
			with(self.heldItem){
				thrown = true;
				throwDirection = "up";
				lastKnownBoxX = throwingBoxObj.x;
				lastKnownBoxY = throwingBoxObj.y;
			}
		break;
		case "down":
			with(self.heldItem){
				thrown = true;
				throwDirection = "down";
				lastKnownBoxX = throwingBoxObj.x;
				lastKnownBoxY = throwingBoxObj.y;
			}
		break;
		case "left":
			with(self.heldItem){
				thrown = true;
				throwDirection = "left";
				lastKnownBoxX = throwingBoxObj.x;
				lastKnownBoxY = throwingBoxObj.y;
			}
		break;
		case "right":
			with(self.heldItem){
				thrown = true;
				throwDirection = "right";
				lastKnownBoxX = throwingBoxObj.x;
				lastKnownBoxY = throwingBoxObj.y;
			}
		break;
	}
	instance_destroy(throwingBoxObj);
	self.throwHoldTimer = 0;
	self.heldItem = false;
	self.canThrow = false;
}


// IF you ever release the throw button and you can't throw, check and delete the throwbox
if(keyboard_check_released(jabButton)){
	instance_destroy(throwingBoxObj)
	self.throwHoldTimer = 0;
}