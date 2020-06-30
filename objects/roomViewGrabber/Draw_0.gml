/// @description Insert description here
// You can write your code in this editor
if(timerForAreaText >= -600){
	if(room = 1){
		scribbleCreated =  "[coolFont][wave] - Caves - [/wave][/coolFont]";
	}
	if(room = 2){
		scribbleCreated =  "[coolFont][wave] - North Cliff - [/wave][/coolFont]";
	}
	draw_rectangle_color(self.bbox_left, self.bbox_bottom - 90, self.bbox_right + timerForAreaText, self.bbox_bottom - 80, c_black, c_black, c_black,c_black, 0)
	scribble_draw((self.bbox_right - 100) + timerForAreaText, self.bbox_bottom - 90, scribbleCreated)
}

