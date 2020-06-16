var partNumber = argument2;

for(i = 0; i < partNumber; i += 1){
	instance_create_depth(argument0 + random_range(-32, 32), argument1 + random_range(-32, 32), -1,  expCrystal)
}