////////////////////////////////////////////////////////////////////////////////
//INFO BAR
//The Following is the info bar on the top of the view.

var _depth = gpu_get_depth();
gpu_set_depth(-10000);

draw_set_font(fon_main);
draw_set_color(c_white);
draw_background_ext(
  bac_intro_grass0,
  __view_get(e__VW.XView, 0),
  __view_get(e__VW.YView, 0),
  1,
  1,
  0,
  c_white,
  al
);
draw_sprite_ext(
  spr_menu_element,
  0,
  __view_get(e__VW.XView, 0),
  __view_get(e__VW.YView, 0),
  1,
  1,
  0,
  c_white,
  1
);
draw_text_ext_alpha(
  __view_get(e__VW.XView, 0) + 32,
  __view_get(e__VW.YView, 0) + 4,
  string(global.beast_party[1]) +
    " Lv." +
    string(global.beast_party[5]) +
    "#HP:" +
    string(global.beast_party[7]) +
    "/" +
    string(global.beast_party[8]) +
    " EP:" +
    string(global.beast_party[10]) +
    "/" +
    string(global.beast_party[11]) +
    " EXP:" +
    string(global.beast_party[12]) +
    "/" +
    string(global.beast_party[13]),
  12,
  256,
  0.5
);

///////////////////////////////////////////////////////////////////////////////
//MAIN MENU
//The following shows all the menus for the main menu, and the main
//menu itself.

if (cur_menu == 0) {
  //Main Menu
  //-----------------------MAIN MENU--------------------------------\\
  //Selection Bar

  draw_sprite_ext(
    spr_menu_select,
    0,
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 48 + (cur_select - trecheck) * 16,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 34,
    "Menu",
    12,
    256,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 50,
    "Bag",
    12,
    256,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 66,
    "Stats",
    12,
    256,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 82,
    "Save",
    12,
    256,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 98,
    "Load",
    12,
    256,
    (al - tal) * 0.5
  );
}
///////////////////////////////////////////////////////////////////////////////
if (cur_menu == 1) {
  //Item Menu
  //Selection Bar
  draw_sprite_ext(
    spr_menu_select,
    0,
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 48 + (cur_select - trecheck) * 16,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  //Bag Text
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 34,
    "Bag",
    12,
    256,
    (al - tal) * 0.5
  );
  //Current Pocket
  draw_sprite_ext(
    spr_menu_item_pocket,
    global.inventoryline[0],
    __view_get(e__VW.XView, 0) + 40,
    __view_get(e__VW.YView, 0) + 32,
    1,
    1,
    0,
    c_white,
    0.5 * (al - tal)
  );

  //Item Sprites
  draw_sprite_ext(
    spr_inventory_obj,
    global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1]], 0],
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 48,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_sprite_ext(
    spr_inventory_obj,
    global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 1],
      0],
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 64,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_sprite_ext(
    spr_inventory_obj,
    global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 2],
      0],
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 80,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_sprite_ext(
    spr_inventory_obj,
    global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 3],
      0],
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 96,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  //Item Name
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 26,
    __view_get(e__VW.YView, 0) + 50,
    global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1]], 2],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 26,
    __view_get(e__VW.YView, 0) + 66,
    global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 1],
      2],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 26,
    __view_get(e__VW.YView, 0) + 82,
    global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 2],
      2],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 26,
    __view_get(e__VW.YView, 0) + 98,
    global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 3],
      2],
    16,
    320,
    (al - tal) * 0.5
  );
  //Number
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 10,
    __view_get(e__VW.YView, 0) + 52,
    string(global.inventorystack[global.inventoryline[0], global.inventoryline[1]]),
    16,
    320,
    (al - tal) *
      global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1]],
        0]
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 10,
    __view_get(e__VW.YView, 0) + 68,
    string(global.inventorystack[global.inventoryline[0], global.inventoryline[1] + 1]),
    16,
    320,
    (al - tal) *
      global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 1],
        0]
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 10,
    __view_get(e__VW.YView, 0) + 84,
    string(global.inventorystack[global.inventoryline[0], global.inventoryline[1] + 2]),
    16,
    320,
    (al - tal) *
      global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 2],
        0]
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 10,
    __view_get(e__VW.YView, 0) + 100,
    string(global.inventorystack[global.inventoryline[0], global.inventoryline[1] + 3]),
    16,
    320,
    (al - tal) *
      global.itemstats[global.inventory[global.inventoryline[0], global.inventoryline[1] + 3],
        0]
  );
  //Desicription+Weight+Price
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 144,
    __view_get(e__VW.YView, 0) + 48,
    global.itemstats[global.inventory[global.inventoryline[0],
        global.inventoryline[1] + cur_select - trecheck],
      3],
    16,
    128,
    (al - tal) * 0.5
  );
}
if (cur_menu == 2) {
  //Stats Menu
  //Selection Bar
  draw_sprite_ext(
    spr_menu_select,
    0,
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 48 + (cur_select - trecheck) * 16,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 34,
    "Stats",
    12,
    256,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 50,
    "Overview",
    12,
    256,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 66,
    "Edit Stats",
    12,
    256,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 82,
    "Edit Skills",
    12,
    256,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 98,
    "Settings",
    12,
    256,
    (al - tal) * 0.5
  );

  if (cur_select < 2) {
    ///////////////////////////////////////////////////////////////////////////////
    //OVERVIEW
    ///////////////////////////////////////////////////////////////////////////////
    var tex0, tex1;
    //Tex0 serves as the first column, and txt1 serves as the second.
    ///////////////////////////////////////////////////////////////////////////////
    tex0 =
      "Name: " +
      string(global.beast_party[1]) +
      "#Element: " +
      string(global.beast_party[2]) +
      "/" +
      string(global.beast_party[3]) +
      "#HP: " +
      string(global.beast_party[7]) +
      "/" +
      string(global.beast_party[8]) +
      "#EXP: " +
      string(global.beast_party[12]) +
      "/" +
      string(global.beast_party[13]) +
      "#PWR: " +
      string(
        (global.beast_party[17] - global.beast_party[16]) /
          global.beast_party[15] +
          global.beast_party[16]
      ) +
      " X" +
      string(global.beast_party[38]) +
      "#SPD: " +
      string(
        (global.beast_party[23] - global.beast_party[22]) /
          global.beast_party[21] +
          global.beast_party[22]
      ) +
      " X" +
      string(global.beast_party[40]) +
      "#ERG: " +
      string(
        (global.beast_party[29] - global.beast_party[28]) /
          global.beast_party[27] +
          global.beast_party[28]
      ) +
      " X" +
      string(global.beast_party[42]);
    ///////////////////////////////////////////////////////////////////////////////
    tex1 =
      "ID: " +
      string(global.beast_party[0]) +
      "#Lv.: " +
      string(global.beast_party[5]) +
      "#EP: " +
      string(global.beast_party[10]) +
      "/" +
      string(global.beast_party[11]) +
      "#TP: " +
      string(global.beast_party[14]) +
      "#DEF: " +
      string(
        (global.beast_party[20] - global.beast_party[19]) /
          global.beast_party[18] +
          global.beast_party[19]
      ) +
      " X" +
      string(global.beast_party[39]) +
      "#HRG: " +
      string(
        (global.beast_party[26] - global.beast_party[25]) /
          global.beast_party[24] +
          global.beast_party[25]
      ) +
      " X" +
      string(global.beast_party[40]);
    ///////////////////////////////////////////////////////////////////////////////
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 160,
      __view_get(e__VW.YView, 0) + 48,
      tex0,
      16,
      256,
      (al - tal) * 0.5
    );
    draw_text_ext_alpha(
      __view_get(e__VW.XView, 0) + 296,
      __view_get(e__VW.YView, 0) + 48,
      tex1,
      16,
      256,
      (al - tal) * 0.5
    );
  }
}
if (cur_menu == 3) {
  //Edit Stats Menu
  //Selection Bar
  draw_sprite_ext(
    spr_menu_select,
    0,
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 48 + (cur_select - trecheck) * 16,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 34,
    "Edit Stats",
    12,
    256,
    (al - tal) * 0.5
  );
  //Item Name
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 50,
    stat_info[statline, 0],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 66,
    stat_info[statline + 1, 0],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 82,
    stat_info[statline + 2, 0],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 98,
    stat_info[statline + 3, 0],
    16,
    320,
    (al - tal) * 0.5
  );

  //Desicription+Weight+Price
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 144,
    __view_get(e__VW.YView, 0) + 48,
    stat_info[statline + cur_select - trecheck, 1] +
      " #TP: " +
      string(global.beast_party[14]) +
      " | Cost: " +
      string(global.beast_party[31 + (statline + cur_select - trecheck)]),
    16,
    128,
    (al - tal) * 0.5
  );
}
if (cur_menu == 4) {
  //Skill Menu
  //Selection Bar
  draw_sprite_ext(
    spr_menu_select,
    0,
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 48 + (cur_select - trecheck) * 16,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 4,
    __view_get(e__VW.YView, 0) + 34,
    "Edit Skills",
    12,
    256,
    (al - tal) * 0.5
  );
  //Item Name
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 26,
    __view_get(e__VW.YView, 0) + 50,
    global.skill_info[global.beast_skills[global.skillline, 0] *
        global.beast_skills[global.skillline, 1],
      0],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 26,
    __view_get(e__VW.YView, 0) + 66,
    global.skill_info[global.beast_skills[global.skillline + 1, 0] *
        global.beast_skills[global.skillline + 1, 1],
      0],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 26,
    __view_get(e__VW.YView, 0) + 82,
    global.skill_info[global.beast_skills[global.skillline + 2, 0] *
        global.beast_skills[global.skillline + 2, 1],
      0],
    16,
    320,
    (al - tal) * 0.5
  );
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 26,
    __view_get(e__VW.YView, 0) + 98,
    global.skill_info[global.beast_skills[global.skillline + 3, 0] *
        global.beast_skills[global.skillline + 3, 1],
      0],
    16,
    320,
    (al - tal) * 0.5
  );
  //Item Sprites
  draw_sprite_ext(
    spr_misc_messages,
    global.beast_skills[global.skillline, 3],
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 48,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_sprite_ext(
    spr_misc_messages,
    global.beast_skills[global.skillline + 1, 3],
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 64,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_sprite_ext(
    spr_misc_messages,
    global.beast_skills[global.skillline + 2, 3],
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 80,
    1,
    1,
    0,
    c_white,
    al - tal
  );
  draw_sprite_ext(
    spr_misc_messages,
    global.beast_skills[global.skillline + 3, 3],
    __view_get(e__VW.XView, 0),
    __view_get(e__VW.YView, 0) + 96,
    1,
    1,
    0,
    c_white,
    al - tal
  );

  //Desicription+Weight+Price
  draw_text_ext_alpha(
    __view_get(e__VW.XView, 0) + 144,
    __view_get(e__VW.YView, 0) + 48,
    "Element: " +
      global.skill_info[global.beast_skills[global.skillline + cur_select - trecheck, 1] *
          global.beast_skills[global.skillline + cur_select - trecheck, 0],
        1] +
      "#" +
      global.skill_info[global.beast_skills[global.skillline + cur_select - trecheck, 1] *
          global.beast_skills[global.skillline + cur_select - trecheck, 0],
        2] +
      "#PWR: " +
      string(
        global.skill_info[global.beast_skills[global.skillline + cur_select - trecheck, 1] *
            global.beast_skills[global.skillline + cur_select - trecheck, 0],
          4]
      ) +
      "#EP: " +
      string(
        global.skill_info[global.beast_skills[global.skillline + cur_select - trecheck, 1] *
            global.beast_skills[global.skillline + cur_select - trecheck, 0],
          5]
      ) +
      "#Cast Time: " +
      string(
        global.skill_info[global.beast_skills[global.skillline + cur_select - trecheck, 1] *
            global.beast_skills[global.skillline + cur_select - trecheck, 0],
          6]
      ),
    16,
    128,
    (al - tal) * 0.5
  );
}

gpu_set_depth(_depth);

/*
//draw_set_alpha(1)
//draw_set_color(c_white)
draw_sprite_ext(spr_menu_levelup,0,view_xview+128,view_yview+24,1,1,0,c_white,lvalpha)
draw_set_alpha(1)
draw_set_color(c_white)
draw_text(view_xview+366,view_yview+16,"timehp: "+string(timerhp))

/* */
/*  */
