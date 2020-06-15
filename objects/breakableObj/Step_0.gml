/// @description Insert description here
// You can write your code in this editor

if(hitPoints <= 10){
	self.sprite = breakableSpr2;
}

if(hitPoints <= 0){
	generateItem(self.itemToGenerate)
	instance_create_depth(self.x, self.y, -2, fireSparkObj);
	createExplosiveChunks(self.x, self.y);
	instance_destroy(self);
}

specialAnimator(self.sprite, false, 1);

