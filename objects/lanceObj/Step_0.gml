/// @description Insert description here
// You can write your code in this editor
specialAnimator(lanceSpr, true, 1);

if(image_xscale == 1){
	//self.x += 14;
} else {
	//self.x -= 14;
}

if(instance_exists(self.hitbox)){
	self.hitbox.x = self.x;
	self.hitbox.y = self.y;
}


lifespan -= 1;

if(lifespan == 0){
	alarm[0] = 1;
}