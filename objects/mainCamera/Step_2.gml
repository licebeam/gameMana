/// @description Insert description here
// You can write your code in this editor
#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

if(instance_exists(roomViewGrabber)){
	var _x = clamp(roomViewGrabber.x - view_width / 2, 0, room_width - view_width);
	var _y = clamp(roomViewGrabber.y - view_height / 2, 0, room_height - view_height);
	
	var cur_x = camera_get_view_x(view);
	var cur_y = camera_get_view_y(view);
	
	var spd = .1;
	
	if(self.isScreenShake){
		camera_set_view_pos(view,lerp(cur_x, irandom_range(_x -10, _x + 10), .4), lerp(cur_y, _y, .4));
	} else {
		camera_set_view_pos(view, lerp(cur_x, _x, spd), lerp(cur_y, _y, spd));
	}
} 