/// @description ////////////////////////////////////////////////////////////////////////////
function beast_party_refresh() {
  //BEAST PARTY
  ///////////////////////////////////////////////////////////////////////////////

  //Maximum Health
  global.beast_party[8] =
    ceil(
      global.beast_stats[global.beast_party[0], 4] *
        (global.beast_party[5] / 100)
    ) + global.beast_party[6];
  //Maximum Energy
  global.beast_party[11] =
    ceil(
      global.beast_stats[global.beast_party[0], 5] *
        (global.beast_party[5] / 100)
    ) + global.beast_party[9];

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

  //Power Multi Display
  global.beast_party[38] =
    (global.beast_party[17] - global.beast_party[16]) /
    ceil(
      global.beast_stats[global.beast_party[0], 6] *
        (global.beast_party[5] / 100)
    );
  //Defence Multi Display
  global.beast_party[39] =
    (global.beast_party[20] - global.beast_party[19]) /
    ceil(
      global.beast_stats[global.beast_party[0], 7] *
        (global.beast_party[5] / 100)
    );
  //Speed Multi Display
  global.beast_party[40] =
    (global.beast_party[23] - global.beast_party[22]) /
    ceil(
      global.beast_stats[global.beast_party[0], 8] *
        (global.beast_party[5] / 100)
    );
  //Health Regen Multi Display
  global.beast_party[41] =
    (global.beast_party[26] - global.beast_party[25]) /
    ceil(
      global.beast_stats[global.beast_party[0], 9] *
        (global.beast_party[5] / 100)
    );
  //Energy Regen Multi Display
  global.beast_party[42] =
    (global.beast_party[29] - global.beast_party[28]) /
    ceil(
      global.beast_stats[global.beast_party[0], 10] *
        (global.beast_party[5] / 100)
    );

  obj_menu.timerhp = ceil(
    10 * (global.beast_party[8] / global.beast_party[26]) + 3
  );
  obj_menu.reghp = ceil(global.beast_party[26] / 100 + 1);
  obj_menu.timerep = ceil(
    10 * (global.beast_party[11] / global.beast_party[29]) + 3
  );
  obj_menu.regep = ceil(global.beast_party[29] / 100 + 1);
}
