
//lance
if(self.attack1 and currentWeapon != "none"){
	switch(currentWeapon){
		case "lance":
		return lanceObj;
		break;
	}
	
	switch(currentWeapon){
		case "fire":
		if(self.mp >= 1){
			self.mp -= 1;
			//regen every 60 frames
			manaRegen = 60;
			return fireballObj;
		} else {
			return fizzleObj
		}
		break;
	}
}


if(self.attack2 and secondaryWeapon != "none"){
	switch(secondaryWeapon){
		case "lance":
		return lanceObj;
		break;
	}
	
	switch(secondaryWeapon){
		case "fire":
		if(self.mp >= 1){
			self.mp -= 1;
			//regen every 60 frames
			manaRegen = 60;
			return fireballObj;
		} else {
			return fizzleObj
		}
		break;
	}
}