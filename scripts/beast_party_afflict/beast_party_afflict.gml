function beast_party_afflict(argument0) {
  //beast_party_afflict(affliction)
  switch (argument0) {
    case 0: //Burned
      global.beast_party[43] = "Burned";
      break;
    case 1: //Frozen
      global.beast_party[43] = "Frozen";
      break;
    case 2: //Poisoned
      global.beast_party[43] = "Poisoned";
      break;
    case 3: //Paralyzed
      global.beast_party[43] = "Paralyzed";
      break;
    case 4: //Blind
      global.beast_party[43] = "Blinded";
      break;
    case 5: //Confused
      global.beast_party[43] = "Confused";
      break;
  }
}
