draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(TitleFont);

draw_set_color(c_red);
draw_text(x+110,y,explain);

draw_set_halign(fa_center);
if(!hover)
{
	draw_set_color(c_red);
	draw_rectangle(x1,y1,x2,y2,1);
	draw_text(x, y, text);
}
else
{
	draw_set_color(c_red);
	draw_rectangle(x1,y1,x2,y2,0);
	draw_set_color(c_black);
	draw_text(x, y, text);
}