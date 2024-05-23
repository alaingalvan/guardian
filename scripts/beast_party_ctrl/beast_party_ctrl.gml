/// @description ////////////////////////////////////////////////////////////////////////////
function beast_party_ctrl() {
  //BEAST PARTY
  ///////////////////////////////////////////////////////////////////////////////
  //HP Control
  if (global.beast_party[7] > global.beast_party[8]) {
    global.beast_party[7] = global.beast_party[8];
  }
  if (global.beast_party[7] <= 0) {
    game_restart();
  }
  //EP Control
  if (global.beast_party[10] > global.beast_party[11]) {
    global.beast_party[10] = global.beast_party[11];
  }
  //EXP Control
  if (global.beast_party[5] <= 100) {
    if (global.beast_party[12] >= global.beast_party[13]) {
      beast_party_lvup();
      global.beast_party[12] = 0;
    }
  } else {
    global.beast_party[12] = 0;
  }

  //EXP Control
  if (global.beast_party[12] >= global.beast_party[13]) {
    beast_party_lvup();
    global.beast_party[12] = 0;
  }

  ///////////////////////////////////////////////////////////////////////////////
  //Recover Energy and Health
  ///////////////////////////////////////////////////////////////////////////////

  //HP Control
  if (global.beast_party[7] < global.beast_party[8]) {
    timerhp -= 1;
    if (timerhp <= 0) {
      global.beast_party[7] += reghp;
      if (global.beast_party[7] >= global.beast_party[8] || ifhit == true) {
        //reset timer.
        timerhp = ceil(
          10 * (global.beast_party[8] / global.beast_party[26]) + 3
        );
        ifhit = false;
      }
    }
  }

  //HP Control
  if (global.beast_party[10] < global.beast_party[11]) {
    timerep -= 1;
    if (timerep <= 0) {
      global.beast_party[10] += regep;
      if (
        global.beast_party[10] >= global.beast_party[11] ||
        obj_player.attacking == true
      ) {
        timerep = ceil(
          10 * (global.beast_party[11] / global.beast_party[29]) + 3
        );
      }
    }
  }
}
