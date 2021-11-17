draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(TitleFont);

if(!hover)
{
	draw_set_color(c_red);
	draw_rectangle(x1,y1,x2,y2,1);
	draw_text(x, y, "Graphics");
}
else
{
	draw_set_color(c_red);
	draw_rectangle(x1,y1,x2,y2,0);
	draw_set_color(c_black);
	draw_text(x, y, "Graphics");
}