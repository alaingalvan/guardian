draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(
  __view_get(e__VW.XView, 0),
  __view_get(e__VW.YView, 0),
  __view_get(e__VW.XView, 0) + 480,
  __view_get(e__VW.YView, 0) + 32,
  0
);
draw_rectangle(
  __view_get(e__VW.XView, 0),
  __view_get(e__VW.YView, 0) + 288,
  __view_get(e__VW.XView, 0) + 480,
  __view_get(e__VW.YView, 0) + 320,
  0
);
draw_set_color(c_white);
