/// @description ////////////////////////////////////////////////////////////////////////////
function beast_party_ini() {
  //BEAST PARTY
  ///////////////////////////////////////////////////////////////////////////////
  //This script should execute on the player is done choosing his species.
  ///////////////////////////////////////////////////////////////////////////////
  //Beast Age
  global.beast_age = 0; // 0=Baby, 1=Child 2=Adult.
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
  //Level
  global.beast_party[5] = 5;
  //Health Addition
  global.beast_party[6] = 0;
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
  //Energy Addition
  global.beast_party[9] = 0;
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
  global.beast_party[14] = 10;

  ///////////////////////////////////////////////////////////////////////////////

  //Power Multiplier
  global.beast_party[15] = 1;
  //Power addition
  global.beast_party[16] = 0;
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
  //Defence addition
  global.beast_party[19] = 0;
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
  //Speed addition
  global.beast_party[22] = 0;
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
  //Health Regen addition
  global.beast_party[25] = 0;
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
  //Energy Regen addition
  global.beast_party[28] = 0;
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
  //Status Afliction
  global.beast_party[43] = "None";
}
