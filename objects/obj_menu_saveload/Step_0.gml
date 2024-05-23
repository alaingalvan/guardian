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

if (keyboard_check_pressed(ord("Z"))) {
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
        eventstring = function() {
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
