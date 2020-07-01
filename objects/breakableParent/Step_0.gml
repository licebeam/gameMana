/// @description Insert description here
// You can write your code in this editor

if(hitPoints <= hpMinimum){
	self.sprite = self.breakSpr2;
}

if(hitPoints <= 0){
	createSmokePuffs(x, y)
	instance_destroy(self);
}

specialAnimator(self.sprite, false, 4, holdAnim);

