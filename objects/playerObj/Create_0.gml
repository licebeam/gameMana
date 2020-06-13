/// @description Insert description here
// You can write your code in this editor
mask_index = playerHitbox;
//initial
hspd = 0;
vspd = 0;

image_speed = 0;
//state machine
self.state = "none";
self.attackState = "none";

self.currentlyFacing = "right";


//animation timing
self.animationFrames = 0;
self.curAnim = playerNR;


//controls
self.jabButton = ord("F")
self.playerMoveSpeed = 60;

//Boosted Weapon
self.canBoost = false;


//UI ITEMS
self.currentWeapon = "lance"


//HOLDING ITEMS;
self.heldItem = false;
self.curGrab = false;
self.throwHoldTimer = 0;
self.throwBox = false;
self.canThrow = false;