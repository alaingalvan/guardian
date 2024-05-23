draw_sprite_ext(
  spr_menu_arrow,
  0,
  __view_get(e__VW.XView, 0) + 124,
  __view_get(e__VW.YView, 0) + 160,
  1,
  1,
  0,
  c_white,
  al
);
if (costend == 0) {
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 144,
    __view_get(e__VW.YView, 0) + 146,
    "Add#" + string(add) + " x | " + string(cost) + " TP ",
    16,
    256,
    al * 0.5
  );
}
if (costend > 0) {
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 144,
    __view_get(e__VW.YView, 0) + 146,
    "Add#" + string(add) + " x | " + string(costend) + " TP ",
    16,
    256,
    al * 0.5
  );
}
