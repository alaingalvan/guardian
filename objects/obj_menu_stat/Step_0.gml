var _check_left = keyboard_check(vk_left);
var _check_right = keyboard_check(vk_right);
var _check_up = keyboard_check(vk_up);
var _check_down = keyboard_check(vk_down);
var _check_z = keyboard_check(ord("Z"));
var _check_x = keyboard_check(ord("X"));
var _check_a = keyboard_check(ord("A"));
var _check_s = keyboard_check(ord("S"));

var _check_left_pressed = keyboard_check_pressed(vk_left);
var _check_right_pressed = keyboard_check_pressed(vk_right);
var _check_up_pressed = keyboard_check_pressed(vk_up);
var _check_down_pressed = keyboard_check_pressed(vk_down);
var _check_z_pressed = keyboard_check_pressed(ord("Z"));
var _check_x_pressed = keyboard_check_pressed(ord("X"));
var _check_a_pressed = keyboard_check_pressed(ord("A"));
var _check_s_pressed = keyboard_check_pressed(ord("S"));

var _check_left_released = keyboard_check_released(vk_left);
var _check_right_released = keyboard_check_released(vk_right);
var _check_up_released = keyboard_check_released(vk_up);
var _check_down_released = keyboard_check_released(vk_down);
var _check_z_released = keyboard_check_released(ord("Z"));
var _check_x_released = keyboard_check_released(ord("X"));
var _check_a_released = keyboard_check_released(ord("A"));
var _check_s_released = keyboard_check_released(ord("S"));

if (gamepad_is_supported()) {
  _check_left |= gamepad_button_check(0, gp_padl);
  _check_right |= gamepad_button_check(0, gp_padr);
  _check_up |= gamepad_button_check(0, gp_padu);
  _check_down |= gamepad_button_check(0, gp_padd);

  _check_z |= gamepad_button_check(0, gp_face1);
  _check_x |= gamepad_button_check(0, gp_face2);
  _check_a |= gamepad_button_check(0, gp_face3);
  _check_s |= gamepad_button_check(0, gp_face4);

  _check_left_pressed |= gamepad_button_check_pressed(0, gp_padl);
  _check_right_pressed |= gamepad_button_check_pressed(0, gp_padr);
  _check_up_pressed |= gamepad_button_check_pressed(0, gp_padu);
  _check_down_pressed |= gamepad_button_check_pressed(0, gp_padd);

  _check_z_pressed |= gamepad_button_check_pressed(0, gp_face1);
  _check_x_pressed |= gamepad_button_check_pressed(0, gp_face2);
  _check_a_pressed |= gamepad_button_check_pressed(0, gp_face3);
  _check_s_pressed |= gamepad_button_check_pressed(0, gp_face4);

  _check_left_released |= gamepad_button_check_released(0, gp_padl);
  _check_right_released |= gamepad_button_check_released(0, gp_padr);
  _check_up_released |= gamepad_button_check_released(0, gp_padu);
  _check_down_released |= gamepad_button_check_released(0, gp_padd);

  _check_z_released |= gamepad_button_check_released(0, gp_face1);
  _check_x_released |= gamepad_button_check_released(0, gp_face2);
  _check_a_released |= gamepad_button_check_released(0, gp_face3);
  _check_s_released |= gamepad_button_check_released(0, gp_face4);
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
///////////////////////////////////////////////////////////////////////////////
//UP DOWN MOVEMENT
///////////////////////////////////////////////////////////////////////////////
cost =
  global.beast_party[
    31 + (obj_menu.statline + obj_menu.cur_select - obj_menu.trecheck)
  ] * add;
if (_check_up_pressed) {
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

if (_check_down_pressed) {
  if (add > 0) {
    add -= 1;
  }
}

///////////////////////////////////////////////////////////////////////////////
//ACTION RESULT
///////////////////////////////////////////////////////////////////////////////
if (_check_z_pressed) {
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
