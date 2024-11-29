/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(fnt_font_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var data =loadInfo();

var greeting = "Welcome " + data[0].username;
draw_text(x,y, greeting);

draw_set_halign(fa_left);
draw_set_valign(fa_top);