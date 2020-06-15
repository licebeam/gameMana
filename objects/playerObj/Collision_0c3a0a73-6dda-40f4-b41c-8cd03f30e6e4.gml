/// @description Insert description here
// You can write your code in this editor
if(!isDamaged){
	isHit = true;
	isDamaged = true;
	self.hp -= 10;
	numberPopUp(self.x - 8, self.y - 8, -10, c_white);
	alarm[0] = 60;
}