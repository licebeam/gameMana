var animName = argument0
var animSpeed = argument1;
//new

//If the animations don't match, restart
if(animName != sprite_index){
	self.animationFrames = 0;
	sprite_index = animName;
	image_index = 0;
}

if(self.animationFrames != (image_number * animSpeed)){
	self.animationFrames += 1;
	//make sure frame changes on animSpeed modulo
	if((animationFrames mod animSpeed) == 0){
		image_index += 1;
	}

	
	if(self.animationFrames >= (image_number * animSpeed)){
		if(self.attackState != "none"){
			// always reset the attack state when the animation is over
			self.attackState = "none";
		}
		//this will restart the animation
		self.animationFrames = 0;
		image_index = 0;
	}
}


//generateHitBoxes

//active
if(checkMaxOnScreen()){
		switch(self.currentlyFacing){
			case "up":
				if(animName == playerAttackU and self.animationFrames == 1){
					//set damage
					//self.damage = 1;f
				}
				//active hitbox
				if(animName == playerAttackU and self.animationFrames == 2){
					shootWeapon(weaponChanger(false), 0)
				}
			break;
					
			case "down":
				if(animName == playerAttackD and self.animationFrames == 1){
					//set damage
					//self.damage = 1;f
				}
				//active hitbox
				if(animName == playerAttackD and self.animationFrames == 2){
					shootWeapon(weaponChanger(false), 0)
				}
			break;
					
			case "right":
				if(animName == playerAttackR and self.animationFrames == 1){
					//set damage
					//self.damage = 1;f
				}
				//active hitbox
				if(animName == playerAttackR and self.animationFrames == 2){
					shootWeapon(weaponChanger(false), 0)
				}
			break;
					
			case "left":
				if(animName == playerAttackL and self.animationFrames == 1){
					//set damage
					//self.damage = 1;f
				}
				//active hitbox
				if(animName == playerAttackL and self.animationFrames == 2){
					shootWeapon(weaponChanger(false), 0)
				}
			break;
		}
}
