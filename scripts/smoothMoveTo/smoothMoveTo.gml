var _tx = argument0;
var _ty = argument1;
var _speedX = argument2;
var _speedY = argument3;

var secondsPassed = delta_time/1000000;
var hspd = _speedX*secondsPassed;
var vspd = _speedY*secondsPassed;

//Snap to position
if(point_distance(self.x, self.y, _tx, _ty) <= 16){
	self.x = _tx;
	self.y = _ty;
}

//Move towards position
show_debug_message(point_distance(self.x, self.y, _tx, _ty))
if(self.x != _tx){
	self.x += hspd;
}
 
if(self.y != _ty){
	self.y += vspd;
}