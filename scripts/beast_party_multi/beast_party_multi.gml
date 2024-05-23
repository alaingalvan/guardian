function beast_party_multi(argument0) {
  //beast_party_multi_player(stat)

  switch (argument0) {
    case 0: //PWR
      global.beast_party[15] += 0.5;
      obj_player.alarm[3] = 30 * 60;
      break;
    case 1: //DEF
      global.beast_party[18] += 0.5;
      obj_player.alarm[4] = 30 * 60;
      break;
    case 2: //SPD
      global.beast_party[21] += 0.5;
      obj_player.alarm[5] = 30 * 60;
      break;
    case 3: //HRG
      global.beast_party[24] += 1;
      obj_player.alarm[6] = 30 * 120;
      break;
    case 4: //ERG
      global.beast_party[27] += 1;
      obj_player.alarm[7] = 30 * 120;
      break;
  }
  beast_party_refresh(); //refresh stats to reflect change.
}
