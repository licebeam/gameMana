/// @description Insert description here
// You can write your code in this editor
//Always run special collisions

enemyAnimator(self.sprite, false, 6);

if(isDoingSpecialAttack == false){
	mp_potential_step_object(targetX, targetY, 0.5, wallObj);
	//closest range to player
	if(distance_to_object(playerObj) < 16){
		targetX = self.x;
		targetY = self.y;
		lastKnownPlayerX = playerObj.x;
		lastKnownPlayerY = playerObj.y;
		//start special attack when in range
		if(attackCooldown <= 0){
			self.sprite = slimeAttackSpr;
			isDoingSpecialAttack = true;
		}
	}

	//range to approach
	if(distance_to_object(playerObj) < 64 and distance_to_object(playerObj) > 16){
		self.sprite = slimeSpr;
		targetX = playerObj.x;
		targetY = playerObj.y;
	}
}

//Hit Stuff
//check for death
if(hitPoints <= 0){
	//generateItem(self.itemToGenerate)
	instance_create_depth(self.x, self.y, -2, fireSparkObj);
	createExplosiveChunks(self.x, self.y);
	instance_destroy(self);
}

///ENEMY KNOCKBACK CODE
if(knockBackTimer >= 0){
	switch(knockBackDir){
		case "left":
			if(!place_meeting(x - 4, y, wallObj)){
				smoothMoveTo(x - 20, y, -200,0);
			}
		break;
	
		case "right":
			if(!place_meeting(x + 4, y, wallObj)){
				smoothMoveTo(x + 20, y, 200,0);
			}
		break;
		
		case "up":
			if(!place_meeting(x, y - 4, wallObj)){
				smoothMoveTo(x, y - 20, 0, -200);
			}
		break;
		
		case "down":
			if(!place_meeting(x, y + 4, wallObj)){
				smoothMoveTo(x, y + 20, 0, 200);
			}
		break;
	}
}

if(knockBackDir != false){
	self.sprite = slimeHurtSpr;
	//Stop enemy from special attacking while stun locked - Temporary?
	specialAttackTimer = 30;
	specialAttackFrames = 12;
	isDoingSpecialAttack = false;
	attackCooldown = 60;
	//
	knockBackTimer -=1;
}

//reset knockback to false
if(knockBackTimer <= 0){
	knockBackDir = false;
}

//SPECIAL ATTACK STUFF
if(attackCooldown >= 1){
	attackCooldown -= 1;
}

if(attackCooldown <= 0){
	if(isDoingSpecialAttack and specialAttackTimer >= 1){
		specialAttackTimer -= 1;
		self.holdAnim = false;
	}

	if(specialAttackTimer <= 0 and specialAttackFrames >= 1){
		//DO SOME SPECIAL ATTACK HERE after 30 Frames
		mp_linear_step_object(lastKnownPlayerX, lastKnownPlayerY, 3, wallObj);
		specialAttackFrames -=1;
	}

	if(specialAttackFrames <= 0){
		specialAttackTimer = 30;
		specialAttackFrames = 12;
		isDoingSpecialAttack = false;
		attackCooldown = 60;
	}
}