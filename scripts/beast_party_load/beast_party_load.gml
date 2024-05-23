/// @description ////////////////////////////////////////////////////////////////////////////
function beast_party_load() {
  //BEAST PARTY
  ///////////////////////////////////////////////////////////////////////////////
  //This script should execute on the player is done choosing his species.
  ///////////////////////////////////////////////////////////////////////////////

  //ID
  global.beast_party[0] = global.beast_id;

  //Name
  global.beast_party[1] = global.beast_name;

  //Element 1
  global.beast_party[2] = global.beast_stats[global.beast_party[0], 1];

  //Element 2
  global.beast_party[3] = global.beast_stats[global.beast_party[0], 2];

  //Description
  global.beast_party[4] = global.beast_stats[global.beast_party[0], 3];

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

  //Maximum Experience
  global.beast_party[13] = global.beast_party[5] * 50;

  ///////////////////////////////////////////////////////////////////////////////

  //Power Multiplier
  global.beast_party[15] = 1;
  //Power
  global.beast_party[17] =
    global.beast_party[15] *
      ceil(
        global.beast_stats[global.beast_party[0], 6] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[16];
  //Defence Multiplier
  global.beast_party[18] = 1;
  //Defence
  global.beast_party[20] =
    global.beast_party[18] *
      ceil(
        global.beast_stats[global.beast_party[0], 7] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[19];
  //Speed Multiplier
  global.beast_party[21] = 1;
  //Speed
  global.beast_party[23] =
    global.beast_party[21] *
      ceil(
        global.beast_stats[global.beast_party[0], 8] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[22];
  //Health Regen Multiplier
  global.beast_party[24] = 1;
  //Health Regen
  global.beast_party[26] =
    global.beast_party[24] *
      ceil(
        global.beast_stats[global.beast_party[0], 9] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[25];
  //Energy Regen Multiplier
  global.beast_party[27] = 1;
  //Energy Regen
  global.beast_party[29] =
    global.beast_party[27] *
      ceil(
        global.beast_stats[global.beast_party[0], 10] *
          (global.beast_party[5] / 100)
      ) +
    global.beast_party[28];

  ///////////////////////////////////////////////////////////////////////////////
  //HP Cost
  global.beast_party[31] = ceil(
    100 / global.beast_stats[global.beast_party[0], 4]
  );
  //EP Cost
  global.beast_party[32] = ceil(
    100 / global.beast_stats[global.beast_party[0], 5]
  );
  //Power Cost
  global.beast_party[33] = ceil(
    500 / global.beast_stats[global.beast_party[0], 6]
  );
  //Defence Cost
  global.beast_party[34] = ceil(
    500 / global.beast_stats[global.beast_party[0], 7]
  );
  //Speed Cost
  global.beast_party[35] = ceil(
    500 / global.beast_stats[global.beast_party[0], 8]
  );
  //Health Regen Cost
  global.beast_party[36] = ceil(
    500 / global.beast_stats[global.beast_party[0], 9]
  );
  //Energy Regen Cost
  global.beast_party[37] = ceil(
    500 / global.beast_stats[global.beast_party[0], 10]
  );
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

  for (var _skl = 0; _skl <= global.maxskill; _skl += 1)
    if (global.beast_party[5] >= global.beast_skills[_skl, 2]) {
      global.beast_skills[_skl, 1] = 1; //Status
    }

  with (obj_player) {
    direction = 270;
    lastdir = 270; //Face Down on Default
    attacking = false;
    path = -1;

    sprleft = asset_get_index(
      "spr_" +
        global.beast_stats[global.beast_id, 0] +
        "_left" +
        string(global.beast_age)
    );
    sprup = asset_get_index(
      "spr_" +
        global.beast_stats[global.beast_id, 0] +
        "_up" +
        string(global.beast_age)
    );
    sprright = asset_get_index(
      "spr_" +
        global.beast_stats[global.beast_id, 0] +
        "_right" +
        string(global.beast_age)
    );
    sprdown = asset_get_index(
      "spr_" +
        global.beast_stats[global.beast_id, 0] +
        "_down" +
        string(global.beast_age)
    );
    
    cur_sprite = sprdown;
  }
}
