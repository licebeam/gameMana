var itemToGenerate = argument0;
var _x = self.x;
var _y = self.y;

show_debug_message("generating item")
instance_create_depth(_x, _y, -2, itemToGenerate);