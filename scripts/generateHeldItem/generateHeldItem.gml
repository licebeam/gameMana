var origName = argument0;

switch(origName){
	case grabablePot:
		instance_create_depth(self.x, self.y, -2, grabablePotHeldObj);
	break;
	
	case grabableRock:
		instance_create_depth(self.x, self.y, -2, grabableRockHeldObj);
	break;
	
}