var _depth = gpu_get_depth();
gpu_set_depth(-10010);

draw_set_halign(fa_center);

if (cur_mode == 0) {
  //save
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 240,
    __view_get(e__VW.YView, 0) + 304,
    "Are you sure you want to save? Press Z to confirm.",
    12,
    400,
    al * 0.5
  );
}

if (cur_mode == 1) {
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 240,
    __view_get(e__VW.YView, 0) + 304,
    "Are you sure you want to load? Press Z to confirm.",
    12,
    400,
    al * 0.5
  );
}

draw_set_halign(fa_left);
gpu_set_depth(_depth);
