/// @description Insert description here
// You can write your code in this editor
if(instance_exists(roomViewGrabber)){
	if(self.x >= roomViewGrabber.bbox_right){
		instance_destroy(self);
	}
}

x += 3;