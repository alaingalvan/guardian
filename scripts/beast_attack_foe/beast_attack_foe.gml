function beast_attack_foe() {
  //beast_attack_foe();
  ///////////////////////////////////////////////////////////////////////////////
  //This is the script that controls all attack posiblities in the game.
  //Due to the fact that there can be over 200 diferent posibilities for an
  //attack to react to an element, I'll be removing the instances where damage
  //is constant, and play this smart.
  //For this script to work, the element of the attack, and it's attack power
  //Must be in it create fuction, in the form "element" and "atkpwr".
  ///////////////////////////////////////////////////////////////////////////////
  var foecol, foefolprev, atkmlti, plrpwr, plrdef, chkdmg, dmgdsply;

  ///////////////////////////////////////////////////////////////////////////////
  //Localize vars into script.
  ///////////////////////////////////////////////////////////////////////////////
  foecol = collision_point(x, y, obj_foe_parrent, false, false);

  atkmlti = 1;

  plrpwr = global.beast_party[17];
  plrdef = global.beast_party[20];

  ///////////////////////////////////////////////////////////////////////////////
  //Elemental Multiplying of power
  ///////////////////////////////////////////////////////////////////////////////
  if (foecol) {
    //If there is a collision
    ///////////////////////////////////////////////////////////////////////////////
    //FIRE ATTACK!
    ///////////////////////////////////////////////////////////////////////////////
    if (element == "Fire") {
      //If the attack's element is FIRE
      if (foecol.elementone == "Fire" || foecol.elementtwo == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }

      if (foecol.elementone == "Ice" || foecol.elementtwo == "Ice") {
        //If the foe's element is ICE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Water" || foecol.elementtwo == "Water") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Grass" || foecol.elementtwo == "Grass") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Dark" || foecol.elementtwo == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }

    if (element == "Metal") {
      //If the attack's element is METAL
      if (foecol.elementone == "Metal" || foecol.elementtwo == "Metal") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }

      if (foecol.elementone == "Water" || foecol.elementtwo == "Water") {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Electric" || foecol.elementtwo == "Electric") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Dark" || foecol.elementtwo == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }

    if (element == "Ice") {
      //If the attack's element is ICE
      if (foecol.elementone == "Fire" || foecol.elementtwo == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }

      if (foecol.elementone == "Ice" || foecol.elementtwo == "Ice") {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Grass" || foecol.elementtwo == "Grass") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Wind" || foecol.elementtwo == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Water") {
      //If the attack's element is WATER
      if (foecol.elementone == "Fire" || foecol.elementtwo == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }

      if (foecol.elementone == "Water" || foecol.elementtwo == "Water") {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Grass" || foecol.elementtwo == "Grass") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Electric" || foecol.elementtwo == "Electric") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    if (element == "Rock") {
      //If the attack's element is ROCK
      if (foecol.elementone == "Fire" || foecol.elementtwo == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Metal" || foecol.elementtwo == "Metal") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Wind" || foecol.elementtwo == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Electric" || foecol.elementtwo == "Electric") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Grass") {
      //If the attack's element is GRASS
      if (foecol.elementone == "Fire" || foecol.elementtwo == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Ice" || foecol.elementtwo == "Ice") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Water" || foecol.elementtwo == "Water") {
        //If the foe's element is ICE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Grass" || foecol.elementtwo == "Grass") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Poison" || foecol.elementtwo == "Poison") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    if (element == "Poison") {
      //If the attack's element is POISON
      if (foecol.elementone == "Metal" || foecol.elementtwo == "Metal") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Grass" || foecol.elementtwo == "Grass") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Poison" || foecol.elementtwo == "Poison") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Combat" || foecol.elementtwo == "Combat") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Light" || foecol.elementtwo == "Light") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    if (element == "Combat") {
      //If the attack's element is COMBAT
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Poison" || foecol.elementtwo == "Poison") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Combat" || foecol.elementtwo == "Combat") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Wind" || foecol.elementtwo == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Light" || foecol.elementtwo == "Light") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Dark" || foecol.elementtwo == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Wind") {
      //If the attack's element is WIND
      if (foecol.elementone == "Ice" || foecol.elementtwo == "Ice") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Grass" || foecol.elementtwo == "Grass") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Combat" || foecol.elementtwo == "Combat") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Wind" || foecol.elementtwo == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    if (element == "Electric") {
      //If the attack's element is ELECTRIC
      if (foecol.elementone == "Metal" || foecol.elementtwo == "Metal") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Water" || foecol.elementtwo == "Water") {
        //If the foe's element is ICE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Rock" || foecol.elementtwo == "Rock") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Grass" || foecol.elementtwo == "Grass") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Wind" || foecol.elementtwo == "Wind") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Electric" || foecol.elementtwo == "Electric") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Light") {
      //If the attack's element is LIGHT
      if (foecol.elementone == "Poison" || foecol.elementtwo == "Poison") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Combat" || foecol.elementtwo == "Combat") {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Light" || foecol.elementtwo == "Light") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Dark" || foecol.elementtwo == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
    }
    if (element == "Dark") {
      //If the attack's element is LIGHT
      if (foecol.elementone == "Fire" || foecol.elementtwo == "Fire") {
        //If the foe's element is FIRE
        atkmlti *= 2;
      }
      if (foecol.elementone == "Combat" || foecol.elementtwo == "Combat") {
        //If the foe's element is ICE
        atkmlti *= 0.5;
      }
      if (foecol.elementone == "Dark" || foecol.elementtwo == "Dark") {
        //If the foe's element is FIRE
        atkmlti *= 0.5;
      }
    }
    ///////////////////////////////////////////////////////////////////////////////
    //Metal ATTACK!
    ///////////////////////////////////////////////////////////////////////////////
    chkdmg = ceil(atkmlti * (atkpwr / 100) * (plrpwr - foecol.def / plrdef));
    if (chkdmg <= 0) {
      chkdmg = 1;
    }
    foecol.hp -= chkdmg;
    foecol.attacked = true;
    dmgdsply = instance_create(x, y, obj_damage_display);
    dmgdsply.txt = chkdmg;
    //instance_destroy();
  }
}
