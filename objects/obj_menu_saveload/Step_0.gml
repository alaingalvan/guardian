var _check_z_pressed = keyboard_check_pressed(ord("Z"));
var _check_x_pressed = keyboard_check_pressed(ord("X"));

if (gamepad_is_supported()) {
  _check_z_pressed |= gamepad_button_check_pressed(0, gp_face1);
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

if (_check_z_pressed) {
  io_clear();
  if (cur_mode == 0) {
    if (cur_select == 1) {
      //Use
      beast_save();
      menuon = false;
      obj_menu.menustop = false;
      exit;
    }
  }
  if (cur_mode == 1) {
    if (cur_select == 1) {
      //Use
      var _j;
      _j = instance_create(0, 0, obj_game_tran0);
      with (_j) {
        eventstring = function () {
          beast_load();
        };
      }
      menuon = false;
      obj_menu.menustop = false;
      obj_menu.menuon = false;
      global.menuon = false;
      exit;
    }
  }
}

if (instance_exists(obj_text_lvmessage)) {
  obj_text_lvmessage.trans = true;
}
if (instance_exists(obj_text_lvmessage)) {
  obj_text_itemmessage.trans = true;
}
