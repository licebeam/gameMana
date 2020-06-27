
//////////////////////////////////
//                              //
//   BktGlitch 1.0              //
//    Written by Blokatt        //
//     (Jan Vorisek)            //
//      @blokatt | blokatt.net  //
//       jan@blokatt.net        //
//        14/08/2017            //
//                              //
//////////////////////////////////

BktGlitch_init(); //getting uniform pointers
application_surface_draw_enable(false); //disabling automatic redrawing of the application surface
display_set_gui_size(1280, 720); //making sure the GUI layer stays always the same size

global.ballHit = 0; //every time the ball bounces, we'll change the effect intensity
global.seed = random(1); //we'll also change the RNG seed every time

