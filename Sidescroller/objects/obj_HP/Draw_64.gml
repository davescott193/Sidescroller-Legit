draw_self();

if !instance_exists(obj_Player_PlaceHolder) exit;

draw_health = lerp(draw_health, obj_Player_PlaceHolder.playerHealth, .25);

draw_set_color(c_red);
draw_rectangle(x+5, y+3, x+96*draw_health/obj_Player_PlaceHolder.playerHealthMax, y+12, false);
draw_set_color(c_white);