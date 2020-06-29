//create root list
var rootList = ds_list_create();


// for every instance create a map
with (playerObj) { //this can be a parent for saving
	var map = ds_map_create();
	ds_list_add(rootList, map);
	ds_list_mark_as_map(rootList, ds_list_size(rootList) -1);
	
	var thisObj = object_get_name(object_index);
	//can add more data for the objects here;
	ds_map_add(map, "roomId", room);
	ds_map_add(map, "obj", thisObj);
	ds_map_add(map, "y", y);
	ds_map_add(map, "x", x);
	ds_map_add(map, "state", state);
	ds_map_add(map, "attackState", attackState);
	ds_map_add(map, "weapon1", currentWeapon);
	ds_map_add(map, "weapon2", secondaryWeapon);
	ds_map_add(map, "hp", hp);
	ds_map_add(map, "maxHp", maxHp);
	ds_map_add(map, "mp", mp);
	ds_map_add(map, "maxMp", maxMp);
	ds_map_add(map, "currentlyFacing", currentlyFacing);
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

//convert to json;
var jsonWrap = ds_map_create();
ds_map_add_list(jsonWrap, "ROOT", rootList);


//save the data
var saveString = json_encode(jsonWrap); 
saveStringToFile("saveData.sav", saveString);

//remove data 
ds_map_destroy(jsonWrap);

show_debug_message("game saved");