/// @description Insert description here
// You can write your code in this editor
if(instance_exists(grabableRock)){
	var pd = point_direction(x, y, grabableRock.x, grabableRock.y);
	var dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd), rspeed) * sign(dd);
	self.x = playerObj.x;
	self.y = playerObj.y -32;
}