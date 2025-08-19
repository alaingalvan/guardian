/// Movement
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

if (
  global.menuon == false &&
  attacking == false &&
  global.cutscene == false &&
  confused == false
) {
  if (_check_left) {
    if (!attacking) {
      if (!place_meeting(x - 16, y, block)) {
        if (place_snapped(16, 16)) {
          motion_set(180, 4);
        }
      }
    }
  }
  if (_check_right) {
    if (!attacking) {
      if (!place_meeting(x + 16, y, block)) {
        if (place_snapped(16, 16)) {
          motion_set(0, 4);
        }
      }
    }
  }
  if (_check_up) {
    if (!attacking) {
      if (!place_meeting(x, y - 16, block)) {
        if (place_snapped(16, 16)) {
          motion_set(90, 4);
        }
      }
    }
  }
  if (_check_down) {
    if (!attacking) {
      if (!place_meeting(x, y + 16, block)) {
        if (place_snapped(16, 16)) {
          motion_set(270, 4);
        }
      }
    }
  }
}
if (
  global.menuon == false &&
  attacking == false &&
  global.cutscene == false &&
  confused == true
) {
  if (_check_right) {
    if (!attacking) {
      if (!place_meeting(x - 16, y, block)) {
        if (place_snapped(16, 16)) {
          motion_set(180, 4);
        }
      }
    }
  }
  if (_check_left) {
    if (!attacking) {
      if (!place_meeting(x + 16, y, block)) {
        if (place_snapped(16, 16)) {
          motion_set(0, 4);
        }
      }
    }
  }
  if (_check_down) {
    if (!attacking) {
      if (!place_meeting(x, y - 16, block)) {
        if (place_snapped(16, 16)) {
          motion_set(90, 4);
        }
      }
    }
  }
  if (_check_up) {
    if (!attacking) {
      if (!place_meeting(x, y + 16, block)) {
        if (place_snapped(16, 16)) {
          motion_set(270, 4);
        }
      }
    }
  }
}

///////////////////////////////////////////////////////////////////////////////
//ATTACKING
///////////////////////////////////////////////////////////////////////////////
if (
  place_snapped(16, 16) &&
  attacking == false &&
  global.menuon == false &&
  global.cutscene == false
) {
  ///////////////////////////////////////////////////////////////////////////////
  //ATTACKING Circle
  ///////////////////////////////////////////////////////////////////////////////
  if (_check_x) {
    var i, c, t;
    for (i = 0; i <= global.maxskill; i += 1)
      if ((global.beast_skills[i, 3] = 2)) {
        t = global.skill_info[global.beast_skills[i, 0], 6];
        c = global.skill_info[global.beast_skills[i, 0], 5];

        if (global.beast_party[10] >= c) {
          attacking = true;
          alarm[0] = ceil((t * 45) / global.beast_party[23] + 3);
          io_clear();
          global.beast_party[10] -= c;
        }
      }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //ATTACKING Square
  ///////////////////////////////////////////////////////////////////////////////
  if (_check_a) {
    var i, c, t;
    for (i = 0; i <= global.maxskill; i += 1)
      if (global.beast_skills[i, 3] == 3) {
        t = global.skill_info[global.beast_skills[i, 0], 6];
        c = global.skill_info[global.beast_skills[i, 0], 5];

        if (global.beast_party[10] >= c) {
          attacking = true;
          alarm[1] = ceil((t * 45) / global.beast_party[23] + 3);
          io_clear();
          global.beast_party[10] -= c;
        }
      }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //ATTACKING TRIANGLE
  ///////////////////////////////////////////////////////////////////////////////
  if (_check_s) {
    var i, c, t;
    for (i = 0; i <= global.maxskill; i += 1)
      if (global.beast_skills[i, 3] == 4) {
        t = global.skill_info[global.beast_skills[i, 0], 6];
        c = global.skill_info[global.beast_skills[i, 0], 5];

        if (global.beast_party[10] >= c) {
          attacking = true;
          alarm[2] = ceil((t * 45) / global.beast_party[23] + 3);
          io_clear();
          global.beast_party[10] -= c;
        }
      }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //QUICK HEAL
  ///////////////////////////////////////////////////////////////////////////////
  //    if (keyboard_check_released(ord('C')) && keyboard_check_released(ord('P')))
  //    {
  //    var _slot;
  //    if (global.inventory[0,slot]>0 && global.inventory[0,_slot]<13)
  //    {
  //    item_use(0,slot)
  //    exit;
  //    }
  //
  //    }
}

if (global.beast_party[43] == "None") {
  atime = 0;
}
///////////////////////////////////////////////////////////////////////////////
if (global.beast_party[43] == "Burned") {
  if (global.beast_party[2] == "Fire" || global.beast_party[3] == "Fire") {
    global.beast_party[43] = "None";
  } else {
    atime += 1;
    if (atime > 30) {
      atime = 0;
      global.beast_party[7] -= 1;
      var i;
      i = instance_create(x, y, obj_damage_display);
      i.txt = 1;
    }
  }
}
///////////////////////////////////////////////////////////////////////////////
if (global.beast_party[43] == "Frozen") {
  if (global.beast_party[2] == "Ice" || global.beast_party[3] == "Ice") {
    global.beast_party[43] = "None";
  } else {
    attacking = true;
    atime += 1;
    if (atime > 150) {
      attacking = false;
      global.beast_party[43] = "None";
    }
  }
}
///////////////////////////////////////////////////////////////////////////////
if (global.beast_party[43] == "Poisoned") {
  if (global.beast_party[2] == "Poison" || global.beast_party[3] == "Poison") {
    global.beast_party[43] = "None";
  } else {
    atime += 1;
    if (atime > 90) {
      atime = 0;
      global.beast_party[7] -= 10;
      var i;
      i = instance_create(x, y, obj_damage_display);
      i.txt = 10;
    }
  }
}
///////////////////////////////////////////////////////////////////////////////
if (global.beast_party[43] == "Paralyzed") {
  if (
    global.beast_party[2] == "Electric" ||
    global.beast_party[3] == "Electric"
  ) {
    global.beast_party[43] = "None";
  } else {
    attacking = true;
    atime += 1;
    if (atime > 300) {
      global.beast_party[43] = "None";
      attacking = false;
    }
  }
}
///////////////////////////////////////////////////////////////////////////////
if (global.beast_party[43] == "Blinded") {
  if (global.beast_party[2] == "Light" || global.beast_party[3] == "Light") {
    global.beast_party[43] = "None";
  } else {
    if (atime == 0) {
      instance_create(0, 0, obj_misc_blind);
      atime = 1;
    }
  }
}
///////////////////////////////////////////////////////////////////////////////
if (global.beast_party[43] == "Confused") {
  if (
    global.beast_party[2] == "Confused" ||
    global.beast_party[3] == "Confused"
  ) {
    global.beast_party[43] = "None";
  } else {
    confused = true;
    atime += 1;
    if (atime > 450) {
      global.beast_party[43] = "None";
      confused = false;
    }
  }
}

// Debug controls:

if (keyboard_check_released(ord("1"))) {
  beast_party_afflict(0);
}
if (keyboard_check_released(ord("2"))) {
  beast_party_afflict(1);
}
if (keyboard_check_released(ord("3"))) {
  beast_party_afflict(2);
}
if (keyboard_check_released(ord("4"))) {
  beast_party_afflict(3);
}
if (keyboard_check_released(ord("5"))) {
  beast_party_afflict(4);
}
if (keyboard_check_released(ord("6"))) {
  beast_party_afflict(5);
}

if (keyboard_check_released(ord("L"))) {
  global.beast_party[12] += global.beast_party[13];
}
if (keyboard_check_released(ord("O"))) {
  global.beast_party[7] -= 1;
}
if (keyboard_check_released(ord("N"))) {
  with (obj_block) {
    if (solid == true) {
      solid = false;
    } else if (solid == false) {
      solid = true;
    }
  }
}
