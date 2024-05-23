/// @description ////////////////////////////////////////////////////////////////////////////
function beast_party_lvup() {
  //BEAST PARTY
  ///////////////////////////////////////////////////////////////////////////////

  //Level
  global.beast_party[5] += 1;
  //Health
  global.beast_party[7] =
    ceil(
      global.beast_stats[global.beast_party[0], 4] *
        (global.beast_party[5] / 100)
    ) + global.beast_party[6];
  //Maximum Health
  global.beast_party[8] =
    ceil(
      global.beast_stats[global.beast_party[0], 4] *
        (global.beast_party[5] / 100)
    ) + global.beast_party[6];
  //Energy
  global.beast_party[10] =
    ceil(
      global.beast_stats[global.beast_party[0], 5] *
        (global.beast_party[5] / 100)
    ) + global.beast_party[9];
  //Maximum Energy
  global.beast_party[11] =
    ceil(
      global.beast_stats[global.beast_party[0], 5] *
        (global.beast_party[5] / 100)
    ) + global.beast_party[9];
  //Experience
  global.beast_party[12] = 0;
  //Maximum Experience
  global.beast_party[13] = global.beast_party[5] * 50;
  //Training Points
  global.beast_party[14] += 2;

  ///////////////////////////////////////////////////////////////////////////////

  //Power
  global.beast_party[17] =
    global.beast_party[15] *
      ceil(
        global.beast_stats[global.beast_party[0], 6] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[16];
  //Defence
  global.beast_party[20] =
    global.beast_party[18] *
      ceil(
        global.beast_stats[global.beast_party[0], 7] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[19];
  //Speed
  global.beast_party[23] =
    global.beast_party[21] *
      ceil(
        global.beast_stats[global.beast_party[0], 8] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[22];
  //Health Regen
  global.beast_party[26] =
    global.beast_party[24] *
      ceil(
        global.beast_stats[global.beast_party[0], 9] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[25];
  //Energy Regen
  global.beast_party[29] =
    global.beast_party[27] *
      ceil(
        global.beast_stats[global.beast_party[0], 10] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[28];

  ///////////////////////////////////////////////////////////////////////////////
  //Status Afliction
  global.beast_party[43] = "None";
  obj_menu.lvup = true;

  obj_menu.timerhp = ceil(
    4 * (global.beast_party[8] / global.beast_party[26]) + 3
  );
  obj_menu.reghp = ceil(global.beast_party[26] / 100 + 1);
  obj_menu.timerep = ceil(
    2 * (global.beast_party[11] / global.beast_party[29]) + 3
  );
  obj_menu.regep = ceil(global.beast_party[29] / 100 + 1);

  ///////////////////////////////////////////////////////////////////////////////
  //SKILL LEARNING
  ///////////////////////////////////////////////////////////////////////////////
  var _skl, _nm, _oj;
  for (_skl = 0; _skl <= global.maxskill; _skl += 1)
    if (
      global.beast_party[5] >= global.beast_skills[_skl, 2] &&
      global.beast_skills[_skl, 1] == 0
    ) {
      global.beast_skills[_skl, 1] = 1; //Status
      _nm = global.beast_skills[_skl, 0];
      _oj = instance_create(0, 0, obj_text_lvmessage);
      _oj.txt = global.skill_info[_nm, 0];
    }
}
