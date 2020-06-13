
//Offsets
var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);


//DELTA TIME MOVE TEST
var secondsPassed = delta_time/1000000;
var horizontalMovement = hspd*secondsPassed;
var verticalMovement = vspd*secondsPassed;

//horizontal collision
//Horizontal collisions
x += horizontalMovement;

//Snap
if place_meeting(x, y, groundObj) { 
    var wall = instance_place(x+sign(hspd),y,groundObj);
    if (hspd > 0) { //right
        x = (wall.bbox_left-1)-sprite_bbox_right;
    } else if (hspd < 0) { // <<------ as it was pointed out need to have else if otherwise hspd=0 is included
        x = (wall.bbox_right+1)-sprite_bbox_left;
    }
    hspd = 0;
}

//Vertical collisions
y += verticalMovement;

//Snap
if place_meeting(x, y, groundObj) {
    var wall = instance_place(x, y, groundObj);
    if (vspd > 0) { // down
        y = (wall.bbox_top - 1) - sprite_bbox_bottom;
		self.state = "none";
		self.jumpCount = 2;
    } else if (vspd < 0) { // up
        y = (wall.bbox_bottom + 1) - sprite_bbox_top;
    }

    vspd = 0;
}