/// @description Insert description here
// You can write your code in this editor
if(areaNameTimer >= 120 and justEnteredRoom = true){
	areaNameTimer = 0;
	justEnteredRoom = false;
}

if(justEnteredRoom == true){
	areaNameTimer += 1;
	areaNameY -= 1;
}

if(areaNameY >= 30 and areaNameTimer >= 120){
	areaNameY +=1;
}