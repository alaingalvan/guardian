draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 64,
  __view_get(e__VW.YView, 0) + 224,
  string_copy(currentstr, 1, pos),
  12,
  360,
  al
);
draw_sprite_ext(
  spr_misc_messages,
  1,
  __view_get(e__VW.XView, 0) + 432,
  __view_get(e__VW.YView, 0) + 240,
  1,
  1,
  0,
  c_white,
  1
);
