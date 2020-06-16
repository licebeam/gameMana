var animName = argument0
var kill = argument1; //boolean value
var animSpeed = argument2;
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
		//this will restart the animation
		self.animationFrames = 0;
		image_index = 0;
		//if kill arg = true kill after animating
		if(kill){
			instance_destroy(self);
		}
	
	}
}