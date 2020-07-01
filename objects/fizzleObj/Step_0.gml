/// @description Insert description here
// You can write your code in this editor
specialAnimator(puffOfSmokeSpr, false, 4, false);

if(image_xscale == 1){
	//self.x += 14;
} else {
	//self.x -= 14;
}

lifespan -= 1;

if(lifespan == 0){
	alarm[0] = 1;
}

//move towards a point