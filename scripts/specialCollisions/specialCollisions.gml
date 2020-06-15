
//Offsets
var sprite_bbox_top = sprite_get_bbox_top(mask_index) - sprite_get_yoffset(mask_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(mask_index) - sprite_get_yoffset(mask_index);
var sprite_bbox_left = sprite_get_bbox_left(mask_index) - sprite_get_xoffset(mask_index);
var sprite_bbox_right = sprite_get_bbox_right(mask_index) - sprite_get_xoffset(mask_index);

if place_meeting(x, y, playerObj) { 
    var player = instance_place(x,y,playerObj);
    if (hspd > 0) { //right
        x = (player.bbox_left-1)-sprite_bbox_right;
    } else if (hspd < 0) {
        x = (player.bbox_right+1)-sprite_bbox_left;
    }
    hspd = 0;
}

if place_meeting(x, y, wallObj) { 
    var wall = instance_place(x,y,wallObj);
    if (hspd > 0) { //right
        x = (wall.bbox_left-1)-sprite_bbox_right;
    } else if (hspd < 0) {
        x = (wall.bbox_right+1)-sprite_bbox_left;
    }
	hspd = 0
}


if place_meeting(x, y, playerObj) {
    var player = instance_place(x, y, playerObj);
    if (vspd > 0) { // down
        y = (player.bbox_top - 1) - sprite_bbox_bottom;
    } else if (vspd < 0) { // up
        y = (player.bbox_bottom + 1) - sprite_bbox_top;
    }
    vspd = 0;
}

if place_meeting(x, y, wallObj) {
    var wall = instance_place(x, y, wallObj);
    if (vspd > 0) { // down
        y = (wall.bbox_top - 1) - sprite_bbox_bottom
    } else if (vspd < 0) { // up
        y = (wall.bbox_bottom + 1) - sprite_bbox_top;
    }
	vspd = 0;
}