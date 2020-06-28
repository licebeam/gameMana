var weaponType = argument0
var shotHeight = argument1;

if(attack1 and currentWeapon != "none"){
	var weaponShot = instance_create_depth(self.x, self.y + shotHeight, -2, weaponType);
	self.attack1 = false;
}

if(attack2 and secondaryWeapon != "none"){
	var weaponShot = instance_create_depth(self.x, self.y + shotHeight, -2, weaponType);
	self.attack2 = false;
}

