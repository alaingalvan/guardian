draw_sprite_ext(sprite_index, all, x, y, 1, 1, 0, c_white, image_alpha - al);
draw_set_alpha(1 - al);
draw_line_width(xstart, ystart, x, y, 10);
draw_set_alpha(0.5 - al);
draw_line_width(xstart, ystart, x, y, 11.5);
draw_set_alpha(0.25 - al);
draw_line_width(xstart, ystart, x, y, 12);
