/// @description Insert description here
// You can write your code in this editor
if(self.isFlashing){
    shader_set(whiteFlashShader);
    draw_self();
    shader_reset();
	holdAnim = false;
	alarm[0] = 1;
	alarm[1] = 20;
}else{
    draw_self();
}