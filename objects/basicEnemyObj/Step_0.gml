/// @description Insert description here
// You can write your code in this editor
//Always run special collisions
if(!global.inCutScene){
	enemyAnimator(self.sprite, false, 6);

	if(isDoingSpecialAttack == false and collision_rectangle(roomViewGrabber.bbox_left, roomViewGrabber.bbox_top ,roomViewGrabber.bbox_right, roomViewGrabber.bbox_bottom, self, false, false)){
		mp_potential_step_object(targetX, targetY, 0.5, softWallObj);
		//closest range to player
		if(distance_to_object(playerObj) < 16){
			inCombat = true;
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
			inCombat = true;
			inWander = false;
			self.sprite = slimeSpr;
			targetX = playerObj.x;
			targetY = playerObj.y;
		} else {
			inCombat = false;
		}
		
		//out of range and 
		if(inCombat == false and distance_to_object(playerObj) > 16){
			self.sprite = slimeSpr;
			inWander = true;
			//TODO: adjust this so that they only wander when they return home
			if(inWander = true){
				targetX = spawnPointX + irandom_range(-128, 128);
				targetY = spawnPointY + irandom_range(-128, 128);;	
			}
		}
	}

	//Hit Stuff
	//check for death
	if(hitPoints <= 0){
		//generateItem(self.itemToGenerate)
		instance_create_depth(self.x, self.y, -2, fireSparkObj);
		//createExplosiveChunks(self.x, self.y);
		instance_destroy(self);
	}

	///ENEMY KNOCKBACK CODE
	if(knockBackTimer >= 0){
		switch(knockBackDir){
			case "left":
				if(!place_meeting(x - 4, y, softWallObj) and !place_meeting(x - 4, y, roomViewGrabber.bbox_left)){
					smoothMoveTo(x - 20, y, -200,0);
				}
			break;
	
			case "right":
				if(!place_meeting(x + 4, y, softWallObj) and !place_meeting(x + 4, y, roomViewGrabber.bbox_right)){
					smoothMoveTo(x + 20, y, 200,0);
				}
			break;
		
			case "up":
				if(!place_meeting(x, y - 4, softWallObj) and !place_meeting(x, y - 4, roomViewGrabber.bbox_top)){
					smoothMoveTo(x, y - 20, 0, -200);
				}
			break;
		
			case "down":
				if(!place_meeting(x, y + 4, softWallObj) and !place_meeting(x, y + 4, roomViewGrabber.bbox_bottom)){
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
			//Looks weird still needs more work
			mp_potential_step_object(lastKnownPlayerX, lastKnownPlayerY, 3, softWallObj);
			specialAttackFrames -=1;
		}

		if(specialAttackFrames <= 0){
			specialAttackTimer = 30;
			specialAttackFrames = 12;
			isDoingSpecialAttack = false;
			attackCooldown = 60;
		}
	}
}