/// @description Insert description here
// You can write your code in this editor


if(!thrown){
	self.x = playerObj.x;
	self.y = playerObj.y - 8;
} else {
	throwFrames -= 1
	with(instance_create_depth(x, y, -2, ghostImage)){
		image_angle = other.image_angle;
		image_index = other.image_index;
		sprite_index = other.sprite_index;
	}
	if(throwFrames >= 1){
		image_angle += 30;
			switch (throwDirection){
			case "up":
				smoothMoveTo(lastKnownBoxX, lastKnownBoxY, 0, -240);
			break
			case "down":
				smoothMoveTo(lastKnownBoxX, lastKnownBoxY, 0, 240);
			break
			case "right":
				smoothMoveTo(lastKnownBoxX, lastKnownBoxY, 240, 40);
			break
			case "left":
				smoothMoveTo(lastKnownBoxX, lastKnownBoxY, -240, 40);
			break
			}	
	}
}

if(throwFrames <= 0){
	switch (throwDirection){
		case "up":
			instance_create_depth(x, y, -2,  grabableRock)
		break
		case "down":
			instance_create_depth(x, y, -2,  grabableRock)
		break
		case "right":
			instance_create_depth(x, y, -2,  grabableRock)
		break
		case "left":
			instance_create_depth(x, y, -2,  grabableRock)
		break
		}	
	instance_destroy(self);
}