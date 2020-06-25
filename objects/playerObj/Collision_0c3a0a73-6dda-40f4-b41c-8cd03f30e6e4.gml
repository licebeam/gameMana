/// @description Insert description here
// You can write your code in this editor
if(!isDamaged and !global.inCutScene){
	audio_play_sound(hurtSound, 1, false);
	isHit = true;
	isDamaged = true;
	self.hp -= 10;
	numberPopUp(self.x - 8, self.y - 8, -10, c_white);
	alarm[0] = 60;
}