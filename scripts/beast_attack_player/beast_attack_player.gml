function beast_attack_player() {
  //beast_attack_player();
  ///////////////////////////////////////////////////////////////////////////////
  //This is the script that controls all attack posiblities in the game.
  //Due to the fact that there can be over 200 diferent posibilities for an
  //attack to react to an element, I'll be removing the instances where damage
  //is constant, and play this smart.
  //For this script to work, the element of the attack, and it's attack power
  //Must be in it create fuction, in the form "element" and "atkpwr".
  //
  //NOTE: For this script to work, the instance must be created with
  //the vars foepower and foedef.
  ///////////////////////////////////////////////////////////////////////////////
  var playercol, atkmlti, chkdmg, dmgdsply;

  ///////////////////////////////////////////////////////////////////////////////
  //Localize vars into script.
  ///////////////////////////////////////////////////////////////////////////////
  playercol = collision_point(x, y, obj_player, true, false);

  atkmlti = 1;

  ///////////////////////////////////////////////////////////////////////////////
  //Elemental Multiplying of power
  ///////////////////////////////////////////////////////////////////////////////
  if (playercol) {
    //If there is a colision
    ///////////////////////////////////////////////////////////////////////////////
    //FIRE ATTACK!
    ///////////////////////////////////////////////////////////////////////////////
    if (element == "Fire") {
      //If the attack's element is FIRE
      if (global.beast_party[2] == "Fire" || global.beast_party[3] == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }

      if (global.beast_party[2] == "Ice" || global.beast_party[3] == "Ice") {
        //If the foe's element is ICE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Water" ||
        global.beast_party[3] == "Water"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Grass" ||
        global.beast_party[3] == "Grass"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (global.beast_party[2] == "Dark" || global.beast_party[3] == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }

    if (element == "Metal") {
      //If the attack's element is METAL
      if (
        global.beast_party[2] == "Metal" ||
        global.beast_party[3] == "Metal"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }

      if (
        global.beast_party[2] == "Water" ||
        global.beast_party[3] == "Water"
      ) {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Electric" ||
        global.beast_party[3] == "Electric"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Dark" || global.beast_party[3] == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }

    if (element == "Ice") {
      //If the attack's element is ICE
      if (global.beast_party[2] == "Fire" || global.beast_party[3] == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }

      if (global.beast_party[2] == "Ice" || global.beast_party[3] == "Ice") {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Grass" ||
        global.beast_party[3] == "Grass"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (global.beast_party[2] == "Wind" || global.beast_party[3] == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Water") {
      //If the attack's element is WATER
      if (global.beast_party[2] == "Fire" || global.beast_party[3] == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }

      if (
        global.beast_party[2] == "Water" ||
        global.beast_party[3] == "Water"
      ) {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Grass" ||
        global.beast_party[3] == "Grass"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Electric" ||
        global.beast_party[3] == "Electric"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    if (element == "Rock") {
      //If the attack's element is ROCK
      if (global.beast_party[2] == "Fire" || global.beast_party[3] == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Metal" ||
        global.beast_party[3] == "Metal"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Wind" || global.beast_party[3] == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Electric" ||
        global.beast_party[3] == "Electric"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Grass") {
      //If the attack's element is GRASS
      if (global.beast_party[2] == "Fire" || global.beast_party[3] == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Ice" || global.beast_party[3] == "Ice") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Water" ||
        global.beast_party[3] == "Water"
      ) {
        //If the foe's element is ICE
        atkmlti *= 2;
      }
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Grass" ||
        global.beast_party[3] == "Grass"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Poison" ||
        global.beast_party[3] == "Poison"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    if (element == "Poison") {
      //If the attack's element is POISON
      if (
        global.beast_party[2] == "Metal" ||
        global.beast_party[3] == "Metal"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Grass" ||
        global.beast_party[3] == "Grass"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Poison" ||
        global.beast_party[3] == "Poison"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Combat" ||
        global.beast_party[3] == "Combat"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Light" ||
        global.beast_party[3] == "Light"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    if (element == "Combat") {
      //If the attack's element is COMBAT
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Poison" ||
        global.beast_party[3] == "Poison"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Combat" ||
        global.beast_party[3] == "Combat"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Wind" || global.beast_party[3] == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Light" ||
        global.beast_party[3] == "Light"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (global.beast_party[2] == "Dark" || global.beast_party[3] == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Wind") {
      //If the attack's element is WIND
      if (global.beast_party[2] == "Ice" || global.beast_party[3] == "Ice") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Grass" ||
        global.beast_party[3] == "Grass"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Combat" ||
        global.beast_party[3] == "Combat"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (global.beast_party[2] == "Wind" || global.beast_party[3] == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    if (element == "Electric") {
      //If the attack's element is ELECTRIC
      if (
        global.beast_party[2] == "Metal" ||
        global.beast_party[3] == "Metal"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Water" ||
        global.beast_party[3] == "Water"
      ) {
        //If the foe's element is ICE
        atkmlti *= 2;
      }
      if (global.beast_party[2] == "Rock" || global.beast_party[3] == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Grass" ||
        global.beast_party[3] == "Grass"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Wind" || global.beast_party[3] == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Electric" ||
        global.beast_party[3] == "Electric"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Light") {
      //If the attack's element is LIGHT
      if (
        global.beast_party[2] == "Poison" ||
        global.beast_party[3] == "Poison"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Combat" ||
        global.beast_party[3] == "Combat"
      ) {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (
        global.beast_party[2] == "Light" ||
        global.beast_party[3] == "Light"
      ) {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Dark" || global.beast_party[3] == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Dark") {
      //If the attack's element is LIGHT
      if (global.beast_party[2] == "Fire" || global.beast_party[3] == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (
        global.beast_party[2] == "Combat" ||
        global.beast_party[3] == "Combat"
      ) {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (global.beast_party[2] == "Dark" || global.beast_party[3] == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    ///////////////////////////////////////////////////////////////////////////////
    //Metal ATTACK!
    ///////////////////////////////////////////////////////////////////////////////
    chkdmg = ceil(
      atkmlti * (atkpwr / 100) * (foepwr - global.beast_party[20] / foedef)
    );
    if (chkdmg <= 0) {
      chkdmg = 1;
    }
    global.beast_party[7] -= chkdmg;
    dmgdsply = instance_create(x, y, obj_damage_display);
    dmgdsply.txt = chkdmg;
    obj_menu.ifhit = true;
    //instance_destroy();
    exit;
  }
}
