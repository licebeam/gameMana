/// @description Insert description here
// You can write your code in this editor


// Surfaces are volatile 
// Always check that they haven't been destroyed 
if (surface_exists(surf)) {
    surface_set_target(surf);
	
    // The following three lines set the 'dark' overlay
	if(room == 1){
	    draw_set_color(c_black);
	    draw_set_alpha(0.5);
	    draw_rectangle(0, 0, room_width, room_height, 0);

	    // Setting the blend mode to 'subtract' is what allows us to "cut holes" out of the overlay
	    gpu_set_blendmode(bm_subtract);
	    draw_set_color(c_white);
    
	    // Draw circles in the overlay with your different light sources
	    // Note that I add randomization to the position and radius to mimic a flicker effect
		//with (playerObj)
	        //fdraw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		
		with (playerObj)
	        draw_sprite_ext(glowingAlphaSpr, 0, x, y, 0.2, 0.2, 0, c_black, .8);
		with (glowBall)
	        draw_sprite_ext(glowingAlphaSpr, 0, x + random_range(-2, 2), y + random_range(-2, 2), random_range(0.2, 0.3), random_range(0.2, 0.3), 0, c_black, .8);
		//attacks
		with (lanceObj)
	        draw_sprite_ext(glowingAlphaSpr, 0, x, y, 0.2, 0.2, 0, c_black, .8);
		//pickups
		with (breakableObj)
	        draw_sprite_ext(glowingAlphaSpr, 0, x, y, 0.2, 0.2, 0, c_black, .8);
		
		with (lancePickUp)
	        draw_sprite_ext(glowingAlphaSpr, 0, x, y, 0.2, 0.2, 0, c_black, .8);
				
				
		    //with (oParticleLantern)
		        //if (image_xscale > 0.25)
		            //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 2 + random_range(-1, 1), false);
		    //Go ahead and add glowing
		with (glowBall)
	        draw_sprite_ext(glowingAlphaSpr, 0, x, y, 0.3, 0.3, 0, c_black, 1);
		with (lancePickUp)
	        draw_sprite_ext(glowingAlphaSpr, 0, x, y, 0.3, 0.3, 0, c_black, 1);
		with (fireFlyCameraEffect)
	        draw_sprite_ext(glowingAlphaSprSmall, 0, x, y, 0.1, 0.1, 0, c_black, 1);
		//change to colored 
		gpu_set_blendmode_ext(bm_src_alpha, bm_max);
			//lights
		with (glowBall)
	        draw_sprite_ext(glowingAlphaSpr, 0, x + random_range(-2, 2), y + random_range(-2, 2), random_range(0.2, 0.3), random_range(0.2, 0.3), 0, c_orange, 0.7);
		with (fireFlyCameraEffect)
	        draw_sprite_ext(glowingAlphaSprSmall, 0, x + random_range(-1, 1), y + random_range(-1, 1), random_range(0.1, 0.2), random_range(0.1, 0.2), 0, c_green, 0.7);
		with (lancePickUp)
	        draw_sprite_ext(glowingAlphaSpr, 0, x + random_range(-2, 2), y + random_range(-2, 2), random_range(0.2, 0.3), random_range(0.2, 0.3), 0, c_green, 0.7);
	
		
		//DO SOME COOL OVERLAY STUFF
	    // The following three lines set the 'dark' overlay
	    draw_set_color(c_blue);
	    draw_set_alpha(0.1);
	    draw_rectangle(0, 0, room_width, room_height, 0);
	    // Reset all of your draw stuff
		gpu_set_blendmode(bm_normal);
	    draw_set_alpha(1);
	    surface_reset_target();
	}
	
	
	if(room = 2){
		//DO SOME COOL OVERLAY STUFF
	    // The following three lines set the 'dark' overlay
	    draw_set_color(c_orange);
	    draw_set_alpha(0.2);
	    draw_rectangle(0, 0, room_width, room_height, 0);
	    // Reset all of your draw stuff
		gpu_set_blendmode(bm_normal);
	    draw_set_alpha(1);
	    surface_reset_target();
	}
} else {
    // Again, surfaces can be a pain
    // Create a new one if there were issues
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
