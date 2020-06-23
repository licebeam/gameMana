/// @description Insert description here
// You can write your code in this editor
self.timeToFade -= 1;

image_alpha = timeToFade / 10

if(self.timeToFade <= 0){
	instance_destroy(self);
}