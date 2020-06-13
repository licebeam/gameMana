
//Offsets
var sprite_bbox_top = sprite_get_bbox_top(mask_index) - sprite_get_yoffset(mask_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(mask_index) - sprite_get_yoffset(mask_index);
var sprite_bbox_left = sprite_get_bbox_left(mask_index) - sprite_get_xoffset(mask_index);
var sprite_bbox_right = sprite_get_bbox_right(mask_index) - sprite_get_xoffset(mask_index);

//DELTA TIME MOVE
var secondsPassed = delta_time/1000000;
var horizontalMovement = hspd*secondsPassed;
var verticalMovement = vspd*secondsPassed;

//Horizontal collisions
x += horizontalMovement;

if place_meeting(x, y, wallObj) { 
    var wall = instance_place(x,y,wallObj);
    if (hspd > 0) { //right
        x = (wall.bbox_left-1)-sprite_bbox_right;
    } else if (hspd < 0) {
        x = (wall.bbox_right+1)-sprite_bbox_left;
    }
    hspd = 0;
}

//Vertical collisions
y += verticalMovement;

if place_meeting(x, y, wallObj) {
    var wall = instance_place(x, y, wallObj);
    if (vspd > 0) { // down
        y = (wall.bbox_top - 1) - sprite_bbox_bottom;
		self.state = "none";
		//self.jumpCount = 2;
    } else if (vspd < 0) { // up
        y = (wall.bbox_bottom + 1) - sprite_bbox_top;
    }

    vspd = 0;
}