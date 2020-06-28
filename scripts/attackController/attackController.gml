	
	//Attack button 1;
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
					self.attack1 = true;
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
					self.attack1 = true;
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
					self.attack1 = true;
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
					self.attack1 = true;
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
	
	
	//Attack button 2
		if(global.a2ButtonPress and self.attackState != "normalMove"){
			hspd = 0;
			vspd = 0;
			switch(self.currentlyFacing){
				case "up":
				 if(self.heldItem){
					show_debug_message("holding");
				} else {
					self.attack2 = true;
					self.curAnim = playerAttackU;					
				}
				break;
					
				case "down":
				 if(self.heldItem){
					show_debug_message("holding");
				} else {
					self.attack2 = true;
					self.curAnim = playerAttackD;		
				}
				break;
					
				case "right":
				 if(self.heldItem){
					show_debug_message("holding");
				} else {
					self.attack2 = true;
					self.curAnim = playerAttackR;					
				}
				break;
					
				case "left":
				if(self.heldItem){
					show_debug_message("holding");
				} else {
					self.attack2 = true;
					self.curAnim = playerAttackL;					
				}
				break;
			}
			self.attackState = "normalMove";
		}
		
		
		//a2 release
				if(global.a2ButtonHeld and self.attackState == "none"){
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
	