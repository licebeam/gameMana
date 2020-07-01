/// @description Insert description here
// You can write your code in this editor
specialAnimator(fireMagicSpr, false, 2, false);

if(image_xscale == 1){
	//self.x += 14;
} else {
	//self.x -= 14;
}

if(instance_exists(self.hitbox)){
	self.hitbox.x = self.x;
	self.hitbox.y = self.y;
	self.x += hspd;
	self.y += vspd;
}


lifespan -= 1;

if(lifespan == 0){
	alarm[0] = 1;
}

//move towards a point