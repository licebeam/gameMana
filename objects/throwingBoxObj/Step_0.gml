/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y, wallObj)){
	sprite_index = grabableHitboxBadSpr;
	with(playerObj){
		self.canThrow = false;
	}
} else {
	sprite_index = grabableHitboxSpr;
	with(playerObj){
		self.canThrow = true;
	}
}