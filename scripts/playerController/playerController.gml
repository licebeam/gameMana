//Initiate Player Controller
if(self.state == "none" and self.attackState == "none" and !self.isPaused){
		//Ring Menu Controller
		if(global.ringMenuButton and !instance_exists(ringMenuObj)){
			instance_create_depth(x, y, -4, ringMenuObj);
		}
		
		
		///MOVEMENT
		if(global.rightButtonHeld){
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
			if(!smokeToggle){
				if(!instance_exists(smokePuffEffect)){instance_create_depth(x, y + 8, -2, smokePuffEffect);}
				smokeToggle = true;
				resetThrow();
			}
		}
	
		if(global.leftButtonHeld){
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
			if(!smokeToggle){
				if(!instance_exists(smokePuffEffect)){instance_create_depth(x, y + 8, -2, smokePuffEffect);}
				smokeToggle = true;
				resetThrow();
			}
		}
		
		if(global.upButtonHeld == true){
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
			if(!smokeToggle){
				if(!instance_exists(smokePuffEffect)){instance_create_depth(x, y + 8, -2, smokePuffEffect);}
				smokeToggle = true;
				resetThrow();
			}
		}
		
		if(global.downButtonHeld){
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
			if(!smokeToggle){
				if(!instance_exists(smokePuffEffect)){instance_create_depth(x, y + 8, -1, smokePuffEffect);}
				smokeToggle = true;
				resetThrow();
			}
		}
		
		
		///FACING CODE
		//
		
		//releae key stop hspd / vspd
				///FACING CODE
		if(global.rightButtonRelease){
				hspd = 0;
		}
	
		if(global.leftButtonRelease){ 
				hspd = 0;
		}
		
		if(global.upButtonRelease){ 
				vspd = 0;
		}
		
		if(global.downButtonRelease){ 
				vspd = 0;
		}		
		//

	
		if(global.aButtonPress and self.attackState != "normalMove"){
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
		if(global.aButtonHeld and self.attackState == "none"){
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
		if(global.noButtonPressed){
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
if(global.aButtonRelease and self.heldItem and instance_exists(throwingBoxObj) and self.canThrow){
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
if(global.aButtonRelease){
	instance_destroy(throwingBoxObj)
	self.throwHoldTimer = 0;
}