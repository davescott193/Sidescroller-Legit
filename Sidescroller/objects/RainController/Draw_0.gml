// surfaces are volatile so don't forget to create it again if it doesn't exist
if !surface_exists(surf) surf = surface_create(room_width, room_height);

// set our surface as a target (for drawing on it)
surface_set_target(surf);


draw_clear_alpha(1,0);

// tell the particle system to draw particles now (on our new surface)
part_system_drawit(global.ps);

// now we need to cut areas, so we use bm_subtract blend mode. whatever we draw will be cut off from the surface

gpu_set_blendmode(bm_subtract); // GMS 2

// now we iterate through each Solid object and we get its bounding box coordinates. see it as getting top-left, top-right, bottom-left and bottom-right corners.
with Solid {
    left = bbox_left;
    right = bbox_right;
    top = bbox_top;
    bottom = bbox_bottom;
    
    // set the left and right coordinates of our Solid object to xx1 and xx2. yy is just the room height, since we need to know how high our area will be.

    yy = room_height;
    
    // now onto drawing our primitives. first of all lets cut the area that our Solid object occupies. draw (and fill) a simple rectangle using the bounding box coordinates we've got before.
    draw_primitive_begin(pr_trianglestrip);
    draw_vertex(left, bottom);
    draw_vertex(right, bottom);
    draw_vertex(left, top);
    draw_vertex(right, top);
    draw_primitive_end();
    
    // and this draws (and fills) the area beneath our Solid object.
    draw_primitive_begin(pr_trianglestrip);
    angle = 90 + RainController.rain_angle;
    
    if RainController.rain_angle <= 0 {
        ld1 = lengthdir_x(yy - top, angle);
        ld2 = lengthdir_x(yy - bottom, angle);
    } else {
        ld1 = lengthdir_x(yy - bottom, angle);
        ld2 = lengthdir_x(yy - top, angle);
    }
    draw_vertex(left-ld1, yy);
    draw_vertex(right-ld2, yy);
    draw_vertex(left, top);
    draw_vertex(right, bottom);

    draw_primitive_end();
       
}

// set the blend mode back to normal

gpu_set_blendmode(bm_normal); // GMS 2

// reset target and draw the surface
surface_reset_target();
draw_surface(surf, 0, 0);