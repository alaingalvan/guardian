if (menuon) {
  if (al < 1) {
    al += 0.1;
  }
  if (al > 1) {
    al = 1;
  }
} else if (!menuon) {
  if (al > 0) {
    al -= 0.1;
    if (al <= 0) {
      instance_destroy();
    }
  }
}

if (keyboard_check_pressed(ord("X"))) {
  menuon = false;
  obj_menu.menustop = false;
}

if (keyboard_check_pressed(vk_up)) {
  if (cur_select > 0) {
    cur_select -= 1;
  }
}
if (keyboard_check_pressed(vk_down)) {
  if (cur_select < menu_max) {
    cur_select += 1;
  }
}

if (keyboard_check_pressed(ord("Z"))) {
  io_clear();
  if (cur_select == 0) {
    //Set to circle
    for (var circle = 0; circle <= global.maxskill; circle += 1)
      if (global.beast_skills[circle, 3] == 2) {
        global.beast_skills[circle, 3] = 0;
      }
    global.beast_skills[
      global.skillline + obj_menu.cur_select - obj_menu.trecheck, 3
    ] = 2;

    menuon = false;
    obj_menu.menustop = false;
    exit;
  }
  if (cur_select == 1) {
    //Set to Square
    for (var square = 0; square <= global.maxskill; square += 1)
      if (global.beast_skills[square, 3] == 3) {
        global.beast_skills[square, 3] = 0;
      }
    global.beast_skills[
      global.skillline + obj_menu.cur_select - obj_menu.trecheck, 3
    ] = 3;
    menuon = false;
    obj_menu.menustop = false;
    exit;
  }
  if (cur_select == 2) {
    //Set to Triangle
    for (var triangle = 0; triangle <= global.maxskill; triangle += 1)
      if (global.beast_skills[triangle, 3] == 4) {
        global.beast_skills[triangle, 3] = 0;
      }
    global.beast_skills[
      global.skillline + obj_menu.cur_select - obj_menu.trecheck, 3
    ] = 4;
    menuon = false;
    obj_menu.menustop = false;
    exit;
  }
  if (cur_select == 3) {
    //Set to none.
    global.beast_skills[
      global.skillline + obj_menu.cur_select - obj_menu.trecheck, 3
    ] = 0;

    menuon = false;
    obj_menu.menustop = false;
    exit;
  }
}
