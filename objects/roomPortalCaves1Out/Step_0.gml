/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y, playerObj) and canUse == true){
	room_goto(1);
}

if(!place_meeting(x, y, playerObj)){
	canUse = true;
}