/// @description Insert description here
// You can write your code in this editor
self.frameLength -= 1;

if(self.frameLength <= 0){
	instance_destroy(self);
} else {
	self.y -= 0.3;
	self.curAlpha -= 0.03;
}