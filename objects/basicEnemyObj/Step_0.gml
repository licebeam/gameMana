/// @description Insert description here
// You can write your code in this editor
//Always run special collisions
damage = irandom_range(10, 30);
if(hitPoints <= 0){
	instance_destroy(self);
}



mp_potential_step_object(targetX, targetY, 0.5, wallObj);
show_debug_message(distance_to_object(playerObj))
//closest range to player
if(distance_to_object(playerObj) < 8){
	targetX = self.x;
	targetY = self.y;
	image_alpha = 0.4
}

//range to approach
if(distance_to_object(playerObj) < 64 and distance_to_object(playerObj) > 8){
	targetX = playerObj.x;
	targetY = playerObj.y;
	image_alpha = 1;
}

//Hit Stuff

if(hitPoints <= 0){
	generateItem(self.itemToGenerate)
	instance_create_depth(self.x, self.y, -2, fireSparkObj);
	createExplosiveChunks(self.x, self.y);
	instance_destroy(self);
}

specialAnimator(self.sprite, false, 1);


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
				smoothMoveTo(x + 20, y, -200,0);
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
	knockBackTimer -=1;
}

