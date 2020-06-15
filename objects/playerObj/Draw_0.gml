/// @description Insert description here
// You can write your code in this editor
draw_self();

if(self.isHit){
	shader_set(whiteFlashShader);
    draw_self();
    shader_reset();
}