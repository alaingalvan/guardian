/// @description ////////////////////////////////////////////////////////////////////////////
//NESISARY MENU CONTROL
///////////////////////////////////////////////////////////////////////////////
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
///////////////////////////////////////////////////////////////////////////////
//UP DOWN MOVEMENT
///////////////////////////////////////////////////////////////////////////////
cost =
  global.beast_party[
    31 + (obj_menu.statline + obj_menu.cur_select - obj_menu.trecheck)
  ] * add;
if (keyboard_check_pressed(vk_up)) {
  if (
    global.beast_party[
      31 + (obj_menu.statline + obj_menu.cur_select - obj_menu.trecheck)
    ] *
      add <
      global.beast_party[14] &&
    global.beast_party[
      31 + (obj_menu.statline + obj_menu.cur_select - obj_menu.trecheck)
    ] *
      (add + 1) <=
      global.beast_party[14]
  ) {
    add += 1;
  }
}

if (keyboard_check_pressed(vk_down)) {
  if (add > 0) {
    add -= 1;
  }
}

///////////////////////////////////////////////////////////////////////////////
//ACTION RESULT
///////////////////////////////////////////////////////////////////////////////
if (keyboard_check_pressed(ord("Z"))) {
  costend =
    global.beast_party[
      31 + (obj_menu.statline + obj_menu.cur_select - obj_menu.trecheck)
    ] * add;

  global.beast_party[14] -= cost; //TP-Cost
  switch (obj_menu.statline + obj_menu.cur_select - obj_menu.trecheck) {
    case 0:
      global.beast_party[6] += add;
      break;
    case 1:
      global.beast_party[9] += add;
      break;
    case 2:
      global.beast_party[16] += add;
      break;
    case 3:
      global.beast_party[19] += add;
      break;
    case 4:
      global.beast_party[22] += add;
      break;
    case 5:
      global.beast_party[25] += add;
      break;
    case 6:
      global.beast_party[28] += add;
      break;
  }

  beast_party_refresh();
  menuon = false;
  obj_menu.menustop = false;
  io_clear();
}
