/// @description Insert description here
// You can write your code in this editor
targetX = self.x;
targetY = self.y;


//HIT STUFF

self.randNumber = random_range(1, 2);
self.itemToGenerate = randomItem(self.randNumber);
hitPoints = 3;
self.holdAnim = true;
image_speed = 0;
self.animationFrames = 0;
self.sprite = slimeEnemySpr;


//flash
self.isFlashing = false;


self.mask_index = playerHitbox;

//Knockback
knockBackDir = false;
knockBackTimer = 0;


hspd = 0;
vspd = 0;


// STATS FOR BATTLE
hitPoints = 60;
damage = 0;
experience = 10;
