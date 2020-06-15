var _x = argument0,
var _y = argument1,

with(instance_create_depth(_x, _y, -4, numberPopObj)){
	self.numToDisplay = argument2;
	self.color = argument3;
};

with(instance_create_depth(_x, _y + 1, -3, numberPopObj)){
	self.numToDisplay = argument2;
	self.color = c_black;
};