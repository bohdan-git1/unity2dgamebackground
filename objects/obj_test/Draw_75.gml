/// @description  draw app
/*
    1. activate the shader for whatever we're about to draw in this object
    2. draw the final game surface in this object
    3. reset the shader to be re-applied again next draw cycle.
*/


shader_set(shd_test);
draw_surface(application_surface,0,0);
shader_reset();

/* */
/*  */
