/// @description ////////////////////////////////////////////////////////////////////////////
//MENU TITLE
///////////////////////////////////////////////////////////////////////////////
//draw_text_ext_alpha(view_xview+212,view_yview+32,"Guardian",12,256,al)
///////////////////////////////////////////////////////////////////////////////
//MENU INITIALIZE
///////////////////////////////////////////////////////////////////////////////
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 192,
  __view_get(e__VW.YView, 0) + 256,
  "Press    to begin.",
  12,
  256,
  0.5 - al
);
draw_sprite_ext(spr_misc_messages, 1, 225, 256, 1, 1, 0, c_white, 1 - al);
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 408,
  __view_get(e__VW.YView, 0) + 304,
  "Version 1.4",
  12,
  256,
  al * 0.5
);
///////////////////////////////////////////////////////////////////////////////
//MENU VISUALS
///////////////////////////////////////////////////////////////////////////////
switch (cur_menu) {
  case 0: //Main Menu
    draw_sprite_ext(
      spr_menu_select,
      0,
      __view_get(e__VW.XView, 0),
      __view_get(e__VW.YView, 0) + 192 + cur_select * 16,
      1,
      1,
      0,
      c_white,
      al - tal - sal
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 194,
      "Load",
      12,
      256,
      (al - tal - sal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 210,
      "New",
      12,
      256,
      (al - tal - sal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 226,
      "Options",
      12,
      256,
      (al - tal - sal) * 0.5
    );
    break;

  case 1: //Load
    draw_sprite_ext(
      spr_menu_select,
      0,
      __view_get(e__VW.XView, 0),
      __view_get(e__VW.YView, 0) + 192 + cur_select * 16,
      1,
      1,
      0,
      c_white,
      al - tal - sal
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 194,
      "Load",
      12,
      256,
      (al - tal - sal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 210,
      "New",
      12,
      256,
      (al - tal - sal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 226,
      "Options",
      12,
      256,
      (al - tal - sal) * 0.5
    );
    break;

  case 2: //New
    draw_sprite_ext(
      spr_menu_sqselect,
      0,
      __view_get(e__VW.XView, 0) + 32,
      __view_get(e__VW.YView, 0) + 64,
      1,
      1,
      0,
      c_white,
      al - tal
    );

    draw_sprite_ext(
      asset_get_index(
        "spr_" + global.beast_stats[global.beast_id, 0] + "_right0"
      ),
      0,
      view_xview + 56,
      view_yview + 88,
      1,
      1,
      0,
      c_white,
      al - tal - sal
    );
    draw_sprite_ext(
      spr_menu_arrow,
      0,
      __view_get(e__VW.XView, 0) + 98,
      __view_get(e__VW.YView, 0) + 64 + cur_select * 16,
      1,
      1,
      0,
      c_white,
      al - tal - sal
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 116,
      __view_get(e__VW.YView, 0) + 66,
      "Name: " + global.beast_name,
      12,
      256,
      (al - tal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 116,
      __view_get(e__VW.YView, 0) + 82,
      "Species: ",
      12,
      256,
      (al - tal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 164,
      __view_get(e__VW.YView, 0) + 82,
      global.beast_stats[global.beast_id, 0],
      12,
      256,
      (al - tal - sal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 116,
      __view_get(e__VW.YView, 0) + 98,
      "Begin",
      12,
      256,
      (al - tal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 240,
      __view_get(e__VW.YView, 0) + 66,
      "Base Stats",
      12,
      256,
      (al - tal) * 0.5
    );
    ///////////////////////////////////////////////////////////////////////////////
    var tex0, tex1;
    //Tex0 serves as the first column, and txt1 serves as the second.
    ///////////////////////////////////////////////////////////////////////////////
    tex0 =
      "Element: " +
      string(global.beast_stats[global.beast_id, 1]) +
      "/" +
      string(global.beast_stats[global.beast_id, 2]) +
      "#" +
      "#HP: " +
      string(global.beast_stats[global.beast_id, 4]) +
      "#PWR: " +
      string(global.beast_stats[global.beast_id, 6]) +
      "#SPD: " +
      string(global.beast_stats[global.beast_id, 8]) +
      "#ERG: " +
      string(global.beast_stats[global.beast_id, 10]);
    //Insert Attacks Here.
    ///////////////////////////////////////////////////////////////////////////////
    tex1 =
      "##EP: " +
      string(global.beast_stats[global.beast_id, 5]) +
      "#DEF: " +
      string(global.beast_stats[global.beast_id, 7]) +
      "#HRG: " +
      string(global.beast_stats[global.beast_id, 9]);
    ///////////////////////////////////////////////////////////////////////////////
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 240,
      __view_get(e__VW.YView, 0) + 82,
      tex0,
      16,
      256,
      (al - tal - sal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 320,
      __view_get(e__VW.YView, 0) + 82,
      tex1,
      16,
      256,
      (al - tal - sal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 112,
      __view_get(e__VW.YView, 0) + 192,
      global.beast_stats[global.beast_id, 3],
      16,
      256,
      (al - tal - sal) * 0.5
    );
    break;

  case 3: //Options
    draw_sprite_ext(
      spr_menu_select,
      0,
      __view_get(e__VW.XView, 0),
      __view_get(e__VW.YView, 0) + 192 + cur_select * 16,
      1,
      1,
      0,
      c_white,
      al - tal - sal
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 194,
      "Encyclopedia",
      12,
      256,
      (al - tal - sal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 210,
      "AG's Notes: " + com,
      12,
      256,
      (al - tal - sal) * 0.5
    );
    if (global.commentary) {
      com = "On";
    }
    if (!global.commentary) {
      com = "Off";
    }
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 4,
      __view_get(e__VW.YView, 0) + 226,
      "Credits",
      12,
      256,
      (al - tal - sal) * 0.5
    );
    break;
}
