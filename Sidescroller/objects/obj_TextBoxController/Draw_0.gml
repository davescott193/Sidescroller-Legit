//Set text
draw_self();

draw_set_font(TitleFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var text_w_half = string_width(text)/2 + buff;
var text_h_half = string_height(text)/2;

//Draw text
if(text_fade > 0)
{
	draw_set_alpha(text_fade/text_fade_max);
	draw_set_color(c_purple);
	draw_rectangle(x-text_w_half, y-text_h_half-text_y, x+text_w_half, y+text_h_half-text_y, 1);
	draw_set_color(c_white);
	draw_text(x, y-text_y, text);
}

draw_set_alpha(1);
