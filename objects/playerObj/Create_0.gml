/// @description Insert description here
// You can write your code in this editor
mask_index = playerHitbox;
//initial
hspd = 0;
vspd = 0;
isPaused = true;
image_speed = 0;
//state machine
self.state = "none";
self.attackState = "none";

self.currentlyFacing = "right";


//animation timing
self.animationFrames = 0;
self.curAnim = playerNR;
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


//Player is Damaged Vars
self.isHit = false;
self.isDamaged = false;
self.blinkTimer = 60;


// Battle Stats
self.hp = 12;
self.maxHp = 12;
self.mp = 3;
self.maxMp = 3;
self.level = 1;
self.damage = 0;
self.strength = 10;
self.defense = 6;
//AttackPower bar
self.attackBar = 0;


//Compass Rose
instance_create_depth(self.x, self.y, -2, compassRoseObj);


//experience Points
currentExp = 0;

//Effects
smokeToggle = false;


//
global.inCutScene = false;