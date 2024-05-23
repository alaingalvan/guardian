draw_set_alpha(al * 0.75);
draw_set_color(c_black);
draw_rectangle(0, 0, 480, 320, 0);
draw_sprite_ext(
  spr_menu_lettersel,
  0,
  __view_get(e__VW.XView, 0) + 136 + inputtext[0] * 16,
  __view_get(e__VW.YView, 0) + 176 + inputtext[2] * 16,
  1,
  1,
  0,
  c_white,
  al
);
draw_sprite_ext(
  spr_menu_textinput,
  0,
  __view_get(e__VW.XView, 0) + 136,
  __view_get(e__VW.YView, 0) + 176,
  1,
  1,
  0,
  c_white,
  al * 0.5
);
draw_set_color(c_white);
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 136,
  __view_get(e__VW.YView, 0) + 144,
  "Please Input Name: ",
  12,
  256,
  al * 0.5
);
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 136,
  __view_get(e__VW.YView, 0) + 160,
  inputstring,
  12,
  256,
  al * 0.5
);
draw_set_halign(fa_center);
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 240,
  __view_get(e__VW.YView, 0) + 240,
  "X: Backspace    |     Enter: Confirm",
  12,
  480,
  al * 0.5
);
draw_set_halign(fa_left);
//draw_text_ext_alpha(view_xview+136,view_yview+16,"Pos:"+string(string_length(inputstring)),12,256,(al*0.5))
draw_set_alpha(1);
