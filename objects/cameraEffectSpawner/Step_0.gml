/// @description Insert description here
// You can write your code in this editor
timeToSpawn -= 1;

if(timeToSpawn <= 0){
	timeToSpawn = 16;
	
	if(room == 1){
		instance_create_depth(
		roomViewGrabber.bbox_left,
		roomViewGrabber.bbox_top + irandom_range(1, 179),
		-3,
		windCameraEffect);
	}
	
	//fireflies
	if(room == 0){
		if(instance_number(fireFlyCameraEffect) <= 5){
			instance_create_depth(
			roomViewGrabber.bbox_right - irandom_range(32, 288),
			roomViewGrabber.bbox_top + irandom_range(32, 148),
			-3,
			fireFlyCameraEffect);
		}
	}
}