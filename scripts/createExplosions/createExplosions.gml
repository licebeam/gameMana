var partNumber = random_range(0, 4);

for(i = 0; i < partNumber; i += 1){
	instance_create_depth(irandom_range(argument0 - 8, argument0 + 8), irandom_range(argument1 - 8, argument1 + 8), -3,  explosionSmallObj);
	instance_create_depth(irandom_range(argument0 - 8, argument0 + 8), irandom_range(argument1 - 8, argument1 + 8), -3,  explosionBigObj);
}