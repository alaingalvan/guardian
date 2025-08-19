var _check_up_pressed = keyboard_check_pressed(vk_up);
var _check_down_pressed = keyboard_check_pressed(vk_down);

var _check_x_pressed = keyboard_check_pressed(ord("X"));

if (gamepad_is_supported()) {
  _check_up_pressed |= gamepad_button_check_pressed(0, gp_padu);
  _check_down_pressed |= gamepad_button_check_pressed(0, gp_padd);

  _check_x_pressed |= gamepad_button_check_pressed(0, gp_face2);
}

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

if (_check_x_pressed) {
  menuon = false;
  obj_menu.menustop = false;
}

if (_check_up_pressed) {
  if (cur_select > 0) {
    cur_select -= 1;
  }
}
if (_check_down_pressed) {
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
    global.beast_skills[global.skillline + obj_menu.cur_select - obj_menu.trecheck, 3] = 2;

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
    global.beast_skills[global.skillline + obj_menu.cur_select - obj_menu.trecheck, 3] = 3;
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
    global.beast_skills[global.skillline + obj_menu.cur_select - obj_menu.trecheck, 3] = 4;
    menuon = false;
    obj_menu.menustop = false;
    exit;
  }
  if (cur_select == 3) {
    //Set to none.
    global.beast_skills[global.skillline + obj_menu.cur_select - obj_menu.trecheck, 3] = 0;

    menuon = false;
    obj_menu.menustop = false;
    exit;
  }
}
