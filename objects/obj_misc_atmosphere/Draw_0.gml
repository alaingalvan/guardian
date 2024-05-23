//draw_set_blend_mode(bm_add)
draw_sprite_ext(
  atmo,
  0,
  __view_get(e__VW.XView, 0),
  __view_get(e__VW.YView, 0),
  1,
  1,
  0,
  c_white,
  alphaone
);
draw_sprite_ext(
  atmo,
  1,
  __view_get(e__VW.XView, 0),
  __view_get(e__VW.YView, 0),
  1,
  1,
  0,
  c_white,
  alphatwo
);
//draw_set_blend_mode(bm_normal)
