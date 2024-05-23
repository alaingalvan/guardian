var _col;
_col = make_color_hsv(0, 0, 10);
draw_set_color(_col);
draw_set_alpha(alphaone);
draw_rectangle(0, 0, 480, 320, 0);
draw_set_color(c_white);
//draw_sprite_tiled_ext(spr_intro_shineline,0,-480+mov,0,1,1,c_white,(alphaone*0.5))
draw_sprite_ext(spr_intro_alaingalvan, 0, 0, 0, 1, 1, 0, c_white, alphatwo);
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 192,
  __view_get(e__VW.YView, 0) + 256,
  "Press    to begin.",
  12,
  256,
  alphathree * 0.5
);
draw_sprite_ext(spr_misc_messages, 1, 225, 256, 1, 1, 0, c_white, alphathree);
