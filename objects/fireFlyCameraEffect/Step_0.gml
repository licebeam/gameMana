/// @description Insert description here
// You can write your code in this editor
lifeTime -= 1;

if(lifeTime > 120){
	x += random_range(0.1,0.3);
	 y -= random_range(0.1,0.4);
}

if(lifeTime < 120){
	x -= random_range(0.1,0.3);
	y -= random_range(0.1,0.4);
	image_alpha -= 0.01;
}

if(lifeTime <= 0){
	instance_destroy(self);
}