/// @description Insert description here
// You can write your code in this editor
//create smoke puffs?

//create hitboxes
screenShake();
with(instance_create_depth(x, y, -1, tertiaryHitBox)){
	//TODO: adjust this
	damage = 5;
	lifespan = 12;
}
createSmokePuffs(x, y);