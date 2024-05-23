if (instore == false) {
  if (cur_itemtype == 0) {
    draw_sprite_ext(
      spr_menu_arrow,
      0,
      __view_get(e__VW.XView, 0) + 124,
      __view_get(e__VW.YView, 0) + 112 + 16 * cur_select,
      1,
      1,
      0,
      c_white,
      al
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 144,
      __view_get(e__VW.YView, 0) + 114,
      "Use",
      12,
      256,
      al * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 144,
      __view_get(e__VW.YView, 0) + 130,
      "Sort",
      12,
      256,
      al * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 144,
      __view_get(e__VW.YView, 0) + 146,
      "Drop",
      12,
      256,
      al * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 144,
      __view_get(e__VW.YView, 0) + 162,
      "Drop All",
      12,
      256,
      al * 0.5
    );
  }
  if (cur_itemtype == 1) {
    draw_sprite_ext(
      spr_menu_arrow,
      0,
      __view_get(e__VW.XView, 0) + 110,
      __view_get(e__VW.YView, 0) + 112 + 16 * cur_select,
      1,
      1,
      0,
      c_white,
      al
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 144,
      __view_get(e__VW.YView, 0) + 114,
      "Sort",
      12,
      256,
      al * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 144,
      __view_get(e__VW.YView, 0) + 130,
      "Drop",
      12,
      256,
      al * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 144,
      __view_get(e__VW.YView, 0) + 146,
      "Drop All",
      12,
      256,
      al * 0.5
    );
  }
}
if (instore == true) {
  draw_sprite_ext(
    spr_menu_arrow,
    0,
    __view_get(e__VW.XView, 0) + 110,
    __view_get(e__VW.YView, 0) + 112 + 16 * cur_select,
    1,
    1,
    0,
    c_white,
    al
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 144,
    __view_get(e__VW.YView, 0) + 114,
    "Sell",
    12,
    256,
    al * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 144,
    __view_get(e__VW.YView, 0) + 130,
    "Sell All",
    12,
    256,
    al * 0.5
  );
}
