/// @description Insert description here
// You can write your code in this editor

if(image_xscale == 1){
	//self.x += 14;
} else {
	//self.x -= 14;
}

self.hitbox.x = self.x;
self.hitbox.y = self.y;


lifespan -= 1;

if(lifespan == 0){
	alarm[0] = 1;
}