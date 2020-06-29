//remove all other objects;
//with(playerObj){
	//instance_destroy(self)
//}

if(file_exists("saveData.sav")){
	var jsonWrap = loadJsonFromFile("saveData.sav"); 
	var rootList = jsonWrap[? "ROOT"];
	
	for (var i = 0; i < ds_list_size(rootList); i++){
		var map = rootList[| i];
		//var obj = map[? "obj"];
		//with (instance_create_layer(0, 0, "instances", asset_get_index(obj))){
		with(playerObj){
			room_goto(map[? "roomId"]);
			x = map[? "x"];
			y = map[? "y"];
			state = map[? "state"];
			attackState = map[? "attackState"];
			currentWeapon = map[? "weapon1"];
			secondaryWeapon = map[? "weapon2"];
			hp = map[? "hp"];
			maxHp = map[? "maxHp"];
			mp = map[? "mp"];
			maxMp = map[? "maxMp"];
			currentlyFacing = map[? "currentlyFacing"];
			//self.state = "none";
			//self.attackState = "none";
			//self.currentlyFacing = "right";
			//self.currentWeapon = "lance";
			//self.secondaryWeapon = "none";
			//self.hp = 12;
			//self.maxHp = 12;
			//self.mp = 3;
			//self.maxMp = 3;
		}
	}
	
	ds_map_destroy(jsonWrap);
	show_debug_message("Game Loaded");
}

