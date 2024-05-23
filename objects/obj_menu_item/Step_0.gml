if (menuon == true) {
  if (al < 1) {
    al += 0.1;
  }
  if (al > 1) {
    al = 1;
  }
} else if (menuon == false) {
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
  if (cur_itemtype == 0) {
    if (cur_select == 0) {
      //Use
      item_use(
        global.inventoryline[0],
        global.inventoryline[1] + obj_menu.cur_select - obj_menu.trecheck
      );
      menuon = false;
      obj_menu.menustop = false;
      exit;
    }
    if (cur_select == 1) {
      //Sort
      item_sort();
      menuon = false;
      obj_menu.menustop = false;
      exit;
    }
    if (cur_select == 2) {
      //Drop
      global.inventorystack[
        global.inventoryline[0],
        global.inventoryline[1] + obj_menu.cur_select - obj_menu.trecheck
      ] -= 1;
      menuon = false;
      obj_menu.menustop = false;
      exit;
    }
    if (cur_select == 3) {
      //Drop All
      global.inventorystack[
        global.inventoryline[0],
        global.inventoryline[1] + obj_menu.cur_select - obj_menu.trecheck
      ] = 0;
      menuon = false;
      obj_menu.menustop = false;
      exit;
    }
  }

  if (cur_itemtype == 1) {
    if (cur_select == 0) {
      //Sort
      item_sort();
      menuon = false;
      obj_menu.menustop = false;
      exit;
    }
    if (cur_select == 1) {
      //Drop
      global.inventorystack[
        global.inventoryline[0],
        global.inventoryline[1] + obj_menu.cur_select - obj_menu.trecheck
      ] -= 1;
      menuon = false;
      obj_menu.menustop = false;
      exit;
    }
    if (cur_select == 2) {
      //Drop All
      global.inventorystack[
        global.inventoryline[0],
        global.inventoryline[1] + obj_menu.cur_select - obj_menu.trecheck
      ] = 0;
      menuon = false;
      obj_menu.menustop = false;
      exit;
    }
  }
}
