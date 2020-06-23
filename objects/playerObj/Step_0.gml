/// @description Insert description here
// You can write your code in this editor

//randomize damage num
if(attackBar < 100){
	self.damage = irandom_range(2, 5) 
}

if(attackBar >= 100){
	self.damage = irandom_range(2, 5) * 3
}
//
playerLevelUp();
basicPlayerCollision();
playerController();
playerAnimator(self.curAnim, 4)


//Blinking when damaged
if(isDamaged){
	isHit = false;
	//blink once each frame
	blinkTimer -= 1;
}

if(blinkTimer mod 4 == 1){
	image_alpha = 0
} else {
	image_alpha = 1;
}


if(self.hp <= 0){
//player has died
	room_restart();
	self.hp = self.maxHp;
	//set mp here too
}

if(self.attackBar <= 98){
	self.attackBar += 2;
}
