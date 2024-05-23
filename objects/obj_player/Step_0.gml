/// Movement
if (
  global.menuon == false &&
  attacking == false &&
  global.cutscene == false &&
  confused == false
) {
  if (keyboard_check(vk_left)) {
    if (!attacking) {
      if (!place_meeting(x - 16, y, block)) {
        if (place_snapped(16, 16)) {
          motion_set(180, 4);
        }
      }
    }
  }
  if (keyboard_check(vk_right)) {
    if (!attacking) {
      if (!place_meeting(x + 16, y, block)) {
        if (place_snapped(16, 16)) {
          motion_set(0, 4);
        }
      }
    }
  }
  if (keyboard_check(vk_up)) {
    if (!attacking) {
      if (!place_meeting(x, y - 16, block)) {
        if (place_snapped(16, 16)) {
          motion_set(90, 4);
        }
      }
    }
  }
  if (keyboard_check(vk_down)) {
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
  if (keyboard_check(vk_right)) {
    if (!attacking) {
      if (!place_meeting(x - 16, y, block)) {
        if (place_snapped(16, 16)) {
          motion_set(180, 4);
        }
      }
    }
  }
  if (keyboard_check(vk_left)) {
    if (!attacking) {
      if (!place_meeting(x + 16, y, block)) {
        if (place_snapped(16, 16)) {
          motion_set(0, 4);
        }
      }
    }
  }
  if (keyboard_check(vk_down)) {
    if (!attacking) {
      if (!place_meeting(x, y - 16, block)) {
        if (place_snapped(16, 16)) {
          motion_set(90, 4);
        }
      }
    }
  }
  if (keyboard_check(vk_up)) {
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
  if (keyboard_check(ord("X"))) {
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
  if (keyboard_check(ord("A"))) {
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
  if (keyboard_check(ord("S"))) {
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
