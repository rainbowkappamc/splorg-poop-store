//draw background

draw_sprite_ext(sprite_index, image_index, text_x,text_y, width/sprite_width, height/sprite_height, 0, c_white, 1);
draw_set_font(Fido);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

//draw characters
for(var i = 0; i < op_length; i++)
{
    var _c = c_white; 
    if pos == i {_c = c_yellow};
    draw_text_colour(text_x, text_y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
}

//draw_text(20,0,global.collectibles);