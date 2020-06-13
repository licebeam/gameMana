/// @description Insert description here
// You can write your code in this editor
x += random_range(-2, 2);

y += random_range(.4, 2);


if(place_meeting(x, y, wallObj)){
	instance_create_depth(self.x, self.y, -10, fireSparkObj);
	instance_destroy(self)
}