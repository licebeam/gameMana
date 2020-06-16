/// @description Insert description here
// You can write your code in this editor
audio_play_sound(test, 1, false)
	other.hitPoints -= self.damage;
	other.holdAnim = false;
	other.isFlashing = true
	numberPopUp(other.x, other.y - 8, self.damage, c_white);
alarm[0] = 1;