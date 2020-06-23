/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(!isDamaged){
	audio_play_sound(hurtSound, 1, false);
	isHit = true;
	isDamaged = true;
	self.hp -= other.damage;
	numberPopUp(self.x - 8, self.y - 8, -other.damage, c_white);
	alarm[0] = 60;
}