/// @description Insert description here
// You can write your code in this editor

createExplosions(x, y);
instance_create_depth(x, y, -2, basicSparkObj);
if(hbParent){
	instance_destroy(hbParent);
}