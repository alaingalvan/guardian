var _col, _prev_color, _prev_alpha;
_col = make_color_hsv(0, 0, 10);
_prev_alpha = draw_get_alpha();
_prev_color = draw_get_color();

draw_set_color(_col);
draw_set_alpha(alphaone);
draw_rectangle(0, 0, 480, 320, 0);
draw_set_color(_prev_color);
draw_set_alpha(_prev_alpha);

draw_sprite_ext(spr_intro_alaingalvan, 0, 0, 0, 1, 1, 0, c_white, alphatwo);
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 180,
  __view_get(e__VW.YView, 0) + 256,
  "Press any key to begin.",
  12,
  256,
  alphathree * 0.5
);