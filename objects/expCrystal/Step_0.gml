/// @description Insert description here
// You can write your code in this editor
mp_linear_step(playerObj.x, playerObj.y, 2,false)

with(instance_create_depth(x, y, -2, ghostImage)){
	image_angle = other.image_angle;
	image_index = other.image_index;
	sprite_index = other.sprite_index;
}