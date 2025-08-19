var _depth = gpu_get_depth();
gpu_set_depth(-10010);

draw_sprite_ext(
  spr_menu_arrow,
  0,
  __view_get(e__VW.XView, 0) + 124,
  __view_get(e__VW.YView, 0) + 160 + 16 * cur_select,
  1,
  1,
  0,
  c_white,
  al
);
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 144,
  __view_get(e__VW.YView, 0) + 162,
  "Set to",
  12,
  256,
  al * 0.5
);
draw_sprite_ext(
  spr_misc_messages,
  2,
  __view_get(e__VW.XView, 0) + 184,
  __view_get(e__VW.YView, 0) + 161,
  1,
  1,
  0,
  c_white,
  al
);

draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 144,
  __view_get(e__VW.YView, 0) + 178,
  "Set to",
  12,
  256,
  al * 0.5
);
draw_sprite_ext(
  spr_misc_messages,
  3,
  __view_get(e__VW.XView, 0) + 184,
  __view_get(e__VW.YView, 0) + 177,
  1,
  1,
  0,
  c_white,
  al
);

draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 144,
  __view_get(e__VW.YView, 0) + 194,
  "Set to",
  12,
  256,
  al * 0.5
);
draw_sprite_ext(
  spr_misc_messages,
  4,
  __view_get(e__VW.XView, 0) + 184,
  __view_get(e__VW.YView, 0) + 193,
  1,
  1,
  0,
  c_white,
  al
);

draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 144,
  __view_get(e__VW.YView, 0) + 210,
  "Set to None",
  12,
  256,
  al * 0.5
);

gpu_set_depth(_depth);
