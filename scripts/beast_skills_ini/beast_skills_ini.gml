function beast_skills_ini() {
  //beast_skills_ini
  //By Alain Galvan
  ///////////////////////////////////////////////////////////////////////////////
  //There are two variables that control skills in this game. One is for info
  //on each skill in the game, the other holds the skills you know. Depending on
  //Your species, there is another var that controls how many skils you can learn.
  //They are global.skill_info,global.beast_skill, and global.maxskills respectivly.
  ///////////////////////////////////////////////////////////////////////////////
  //In global.beast_skills, X is for the skill, and Y is for paramiters such as
  //the button for the skill, etc.
  //For Y, 0 is status, which is if you know the skill or not.
  ///////////////////////////////////////////////////////////////////////////////
  //Since this script only covers the skills of each individual beast,
  //This script should excecute on the player is done chosing his species.
  ///////////////////////////////////////////////////////////////////////////////
  //SKILL VARS
  ///////////////////////////////////////////////////////////////////////////////
  //This var controls which line you are in the skill menu.
  global.skillline = 0;
  ///////////////////////////////////////////////////////////////////////////////
  //BEAST SKILLS
  ///////////////////////////////////////////////////////////////////////////////
  switch (global.beast_id) {
    //-----------------------------------Zero------------------------------------\\
    default:
      //Maximum ammount of Skills
      global.maxskill = 3;
      //Skill 1
      global.beast_skills[0, 0] = 0; //Skill ID
      global.beast_skills[0, 1] = 0; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 0; //Button
      //Skill 2
      global.beast_skills[1, 0] = 0; //Skill ID
      global.beast_skills[1, 1] = 0; //Status
      global.beast_skills[1, 2] = 0; //Level Learned
      global.beast_skills[1, 3] = 0; //Button
      //Skill 3
      global.beast_skills[2, 0] = 0; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 0; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Skill 4
      global.beast_skills[3, 0] = 0; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 0; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Skill 5
      global.beast_skills[4, 0] = 0; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 0; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      break;
    //----------------------------------Phlame-----------------------------------\\
    case 1:
      //Maximum ammount of Skills
      global.maxskill = 9;
      //Fire Shot
      global.beast_skills[0, 0] = 1; //Skill ID
      global.beast_skills[0, 1] = 1; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 2; //Button
      //Ram
      global.beast_skills[1, 0] = 36; //Skill ID
      global.beast_skills[1, 1] = 1; //Status
      global.beast_skills[1, 2] = 5; //Level Learned
      global.beast_skills[1, 3] = 3; //Button
      //Burn Tower
      global.beast_skills[2, 0] = 2; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 10; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Rock Shot
      global.beast_skills[3, 0] = 21; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 15; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Heat Up
      global.beast_skills[4, 0] = 5; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 25; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      //Heat Up
      global.beast_skills[5, 0] = 3; //Skill ID
      global.beast_skills[5, 1] = 0; //Status
      global.beast_skills[5, 2] = 35; //Level Learned
      global.beast_skills[5, 3] = 0; //Button
      //Ionic Burst
      global.beast_skills[6, 0] = 8; //Skill ID
      global.beast_skills[6, 1] = 0; //Status
      global.beast_skills[6, 2] = 45; //Level Learned
      global.beast_skills[6, 3] = 0; //Button
      //Magmastorm
      global.beast_skills[7, 0] = 4; //Skill ID
      global.beast_skills[7, 1] = 0; //Status
      global.beast_skills[7, 2] = 55; //Level Learned
      global.beast_skills[7, 3] = 0; //Button
      //Energy Shot
      global.beast_skills[8, 0] = 51; //Skill ID
      global.beast_skills[8, 1] = 0; //Status
      global.beast_skills[8, 2] = 65; //Level Learned
      global.beast_skills[8, 3] = 0; //Button
      //Omega Crusher
      global.beast_skills[9, 0] = 38; //Skill ID
      global.beast_skills[9, 1] = 0; //Status
      global.beast_skills[9, 2] = 75; //Level Learned
      global.beast_skills[9, 3] = 0; //Button
      break;
    //----------------------------------Shard-----------------------------------\\
    case 2:
      //Maximum ammount of Skills
      global.maxskill = 9;
      //Ice Shot
      global.beast_skills[0, 0] = 11; //Skill ID
      global.beast_skills[0, 1] = 1; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 2; //Button
      //Water Sphere
      global.beast_skills[1, 0] = 16; //Skill ID
      global.beast_skills[1, 1] = 1; //Status
      global.beast_skills[1, 2] = 5; //Level Learned
      global.beast_skills[1, 3] = 3; //Button
      //Ram
      global.beast_skills[2, 0] = 36; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 10; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Freeze Breath
      global.beast_skills[3, 0] = 41; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 15; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Ice Razor
      global.beast_skills[4, 0] = 14; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 20; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      //Air Cutter
      global.beast_skills[5, 0] = 12; //Skill ID
      global.beast_skills[5, 1] = 0; //Status
      global.beast_skills[5, 2] = 25; //Level Learned
      global.beast_skills[5, 3] = 0; //Button
      //Snow Boulder
      global.beast_skills[6, 0] = 13; //Skill ID
      global.beast_skills[6, 1] = 0; //Status
      global.beast_skills[6, 2] = 30; //Level Learned
      global.beast_skills[6, 3] = 0; //Button
      //Snow Avalanche
      global.beast_skills[7, 0] = 15; //Skill ID
      global.beast_skills[7, 1] = 0; //Status
      global.beast_skills[7, 2] = 35; //Level Learned
      global.beast_skills[7, 3] = 0; //Button
      //Duo Winds
      global.beast_skills[8, 0] = 42; //Skill ID
      global.beast_skills[8, 1] = 0; //Status
      global.beast_skills[8, 2] = 40; //Level Learned
      global.beast_skills[8, 3] = 0; //Button
      //Snow Avalanche
      global.beast_skills[9, 0] = 45; //Skill ID
      global.beast_skills[9, 1] = 0; //Status
      global.beast_skills[9, 2] = 45; //Level Learned
      global.beast_skills[9, 3] = 0; //Button
      break;
    //----------------------------------Root-----------------------------------\\
    case 3:
      //Maximum ammount of Skills
      global.maxskill = 9;
      //Rock Shot
      global.beast_skills[0, 0] = 21; //Skill ID
      global.beast_skills[0, 1] = 1; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 2; //Button
      //Blade Shot
      global.beast_skills[1, 0] = 26; //Skill ID
      global.beast_skills[1, 1] = 1; //Status
      global.beast_skills[1, 2] = 5; //Level Learned
      global.beast_skills[1, 3] = 3; //Button
      //Ram
      global.beast_skills[2, 0] = 36; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 10; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Poison Shot
      global.beast_skills[3, 0] = 31; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 15; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Root Quake
      global.beast_skills[4, 0] = 28; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 20; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      //Hyper Pincers
      global.beast_skills[5, 0] = 29; //Skill ID
      global.beast_skills[5, 1] = 0; //Status
      global.beast_skills[5, 2] = 25; //Level Learned
      global.beast_skills[5, 3] = 0; //Button
      //Terra Shield
      global.beast_skills[6, 0] = 25; //Skill ID
      global.beast_skills[6, 1] = 0; //Status
      global.beast_skills[6, 2] = 30; //Level Learned
      global.beast_skills[6, 3] = 0; //Button
      //Ore Shot
      global.beast_skills[7, 0] = 6; //Skill ID
      global.beast_skills[7, 1] = 0; //Status
      global.beast_skills[7, 2] = 35; //Level Learned
      global.beast_skills[7, 3] = 0; //Button
      //Tri Winds
      global.beast_skills[8, 0] = 24; //Skill ID
      global.beast_skills[8, 1] = 0; //Status
      global.beast_skills[8, 2] = 40; //Level Learned
      global.beast_skills[8, 3] = 0; //Button
      //Mind Currupt
      global.beast_skills[9, 0] = 58; //Skill ID
      global.beast_skills[9, 1] = 0; //Status
      global.beast_skills[9, 2] = 45; //Level Learned
      global.beast_skills[9, 3] = 0; //Button
      break;

    case 4:
      //Maximum ammount of Skills
      global.maxskill = 9;
      //Spark Shot
      global.beast_skills[0, 0] = 46; //Skill ID
      global.beast_skills[0, 1] = 1; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 2; //Button
      //Air Cutter
      global.beast_skills[1, 0] = 41; //Skill ID
      global.beast_skills[1, 1] = 1; //Status
      global.beast_skills[1, 2] = 5; //Level Learned
      global.beast_skills[1, 3] = 3; //Button
      //Duo Winds
      global.beast_skills[2, 0] = 42; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 10; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Electric Bomb
      global.beast_skills[3, 0] = 47; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 15; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Tornado
      global.beast_skills[4, 0] = 8; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 20; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      //Wind Canceler
      global.beast_skills[5, 0] = 45; //Skill ID
      global.beast_skills[5, 1] = 0; //Status
      global.beast_skills[5, 2] = 25; //Level Learned
      global.beast_skills[5, 3] = 0; //Button
      //Electron Beam
      global.beast_skills[6, 0] = 49; //Skill ID
      global.beast_skills[6, 1] = 0; //Status
      global.beast_skills[6, 2] = 30; //Level Learned
      global.beast_skills[6, 3] = 0; //Button
      //Energy Shot
      global.beast_skills[7, 0] = 51; //Skill ID
      global.beast_skills[7, 1] = 0; //Status
      global.beast_skills[7, 2] = 35; //Level Learned
      global.beast_skills[7, 3] = 0; //Button
      //Purification
      global.beast_skills[8, 0] = 55; //Skill ID
      global.beast_skills[8, 1] = 0; //Status
      global.beast_skills[8, 2] = 40; //Level Learned
      global.beast_skills[8, 3] = 0; //Button
      //Night Blind
      global.beast_skills[9, 0] = 57; //Skill ID
      global.beast_skills[9, 1] = 0; //Status
      global.beast_skills[9, 2] = 45; //Level Learned
      global.beast_skills[9, 3] = 0; //Button
      break;
    //----------------------------------------------------------------------------\\
    case 5:
      //Maximum ammount of Skills
      global.maxskill = 9;
      //Water Sphere
      global.beast_skills[0, 0] = 16; //Skill ID
      global.beast_skills[0, 1] = 1; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 2; //Button
      //Rock Shot
      global.beast_skills[1, 0] = 21; //Skill ID
      global.beast_skills[1, 1] = 1; //Status
      global.beast_skills[1, 2] = 5; //Level Learned
      global.beast_skills[1, 3] = 3; //Button
      //Ice Shot
      global.beast_skills[2, 0] = 11; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 10; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Tsunami
      global.beast_skills[3, 0] = 17; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 15; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Mist
      global.beast_skills[4, 0] = 20; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 20; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      //Pressure Blast
      global.beast_skills[5, 0] = 18; //Skill ID
      global.beast_skills[5, 1] = 0; //Status
      global.beast_skills[5, 2] = 25; //Level Learned
      global.beast_skills[5, 3] = 0; //Button
      //Earth Fissure
      global.beast_skills[6, 0] = 24; //Skill ID
      global.beast_skills[6, 1] = 0; //Status
      global.beast_skills[6, 2] = 30; //Level Learned
      global.beast_skills[6, 3] = 0; //Button
      //Ore Shot
      global.beast_skills[7, 0] = 6; //Skill ID
      global.beast_skills[7, 1] = 0; //Status
      global.beast_skills[7, 2] = 35; //Level Learned
      global.beast_skills[7, 3] = 0; //Button
      //Terra Shield
      global.beast_skills[8, 0] = 25; //Skill ID
      global.beast_skills[8, 1] = 0; //Status
      global.beast_skills[8, 2] = 40; //Level Learned
      global.beast_skills[8, 3] = 0; //Button
      //Omega Crusher
      global.beast_skills[9, 0] = 38; //Skill ID
      global.beast_skills[9, 1] = 0; //Status
      global.beast_skills[9, 2] = 45; //Level Learned
      global.beast_skills[9, 3] = 0; //Button
      break;

    case 6:
      //Maximum ammount of Skills
      global.maxskill = 9;
      //Dusk Ball
      global.beast_skills[0, 0] = 56; //Skill ID
      global.beast_skills[0, 1] = 1; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 2; //Button
      //Poison Shot
      global.beast_skills[1, 0] = 31; //Skill ID
      global.beast_skills[1, 1] = 1; //Status
      global.beast_skills[1, 2] = 5; //Level Learned
      global.beast_skills[1, 3] = 3; //Button
      //Mind Currupt
      global.beast_skills[2, 0] = 36; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 10; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Healing
      global.beast_skills[3, 0] = 54; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 15; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Chaos Shadow
      global.beast_skills[4, 0] = 59; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 20; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      //Chaos Star
      global.beast_skills[5, 0] = 60; //Skill ID
      global.beast_skills[5, 1] = 0; //Status
      global.beast_skills[5, 2] = 25; //Level Learned
      global.beast_skills[5, 3] = 0; //Button
      //Ram
      global.beast_skills[6, 0] = 58; //Skill ID
      global.beast_skills[6, 1] = 0; //Status
      global.beast_skills[6, 2] = 30; //Level Learned
      global.beast_skills[6, 3] = 0; //Button
      //Poison Lance
      global.beast_skills[7, 0] = 34; //Skill ID
      global.beast_skills[7, 1] = 0; //Status
      global.beast_skills[7, 2] = 35; //Level Learned
      global.beast_skills[7, 3] = 0; //Button
      //Black Disease
      global.beast_skills[8, 0] = 35; //Skill ID
      global.beast_skills[8, 1] = 0; //Status
      global.beast_skills[8, 2] = 40; //Level Learned
      global.beast_skills[8, 3] = 0; //Button
      //Night Blind
      global.beast_skills[9, 0] = 57; //Skill ID
      global.beast_skills[9, 1] = 0; //Status
      global.beast_skills[9, 2] = 45; //Level Learned
      global.beast_skills[9, 3] = 0; //Button
      break;
    case 7:
      //Maximum ammount of Skills
      global.maxskill = 9;
      //Fire Shot
      global.beast_skills[0, 0] = 1; //Skill ID
      global.beast_skills[0, 1] = 1; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 2; //Button
      //Dusk Ball
      global.beast_skills[1, 0] = 56; //Skill ID
      global.beast_skills[1, 1] = 1; //Status
      global.beast_skills[1, 2] = 5; //Level Learned
      global.beast_skills[1, 3] = 3; //Button
      //Mind Currupt
      global.beast_skills[2, 0] = 58; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 10; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Blaze Tower
      global.beast_skills[3, 0] = 2; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 15; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Chaos Shadow
      global.beast_skills[4, 0] = 59; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 20; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      //Chaos Star
      global.beast_skills[5, 0] = 60; //Skill ID
      global.beast_skills[5, 1] = 0; //Status
      global.beast_skills[5, 2] = 25; //Level Learned
      global.beast_skills[5, 3] = 0; //Button
      //Ram
      global.beast_skills[6, 0] = 36; //Skill ID
      global.beast_skills[6, 1] = 0; //Status
      global.beast_skills[6, 2] = 30; //Level Learned
      global.beast_skills[6, 3] = 0; //Button
      //Fire Star
      global.beast_skills[7, 0] = 3; //Skill ID
      global.beast_skills[7, 1] = 0; //Status
      global.beast_skills[7, 2] = 35; //Level Learned
      global.beast_skills[7, 3] = 0; //Button
      //Magmastorm
      global.beast_skills[8, 0] = 4; //Skill ID
      global.beast_skills[8, 1] = 0; //Status
      global.beast_skills[8, 2] = 40; //Level Learned
      global.beast_skills[8, 3] = 0; //Button
      //Night Blind
      global.beast_skills[9, 0] = 57; //Skill ID
      global.beast_skills[9, 1] = 0; //Status
      global.beast_skills[9, 2] = 45; //Level Learned
      global.beast_skills[9, 3] = 0; //Button
      break;
    //----------------------------------Phlame-----------------------------------\\
    case 8:
      //Maximum ammount of Skills
      global.maxskill = 9;
      //Fire Shot
      global.beast_skills[0, 0] = 36; //Skill ID
      global.beast_skills[0, 1] = 1; //Status
      global.beast_skills[0, 2] = 0; //Level Learned
      global.beast_skills[0, 3] = 2; //Button
      //Ram
      global.beast_skills[1, 0] = 37; //Skill ID
      global.beast_skills[1, 1] = 1; //Status
      global.beast_skills[1, 2] = 5; //Level Learned
      global.beast_skills[1, 3] = 3; //Button
      //Burn Tower
      global.beast_skills[2, 0] = 2; //Skill ID
      global.beast_skills[2, 1] = 0; //Status
      global.beast_skills[2, 2] = 10; //Level Learned
      global.beast_skills[2, 3] = 0; //Button
      //Rock Shot
      global.beast_skills[3, 0] = 21; //Skill ID
      global.beast_skills[3, 1] = 0; //Status
      global.beast_skills[3, 2] = 15; //Level Learned
      global.beast_skills[3, 3] = 0; //Button
      //Fire Star
      global.beast_skills[4, 0] = 3; //Skill ID
      global.beast_skills[4, 1] = 0; //Status
      global.beast_skills[4, 2] = 25; //Level Learned
      global.beast_skills[4, 3] = 0; //Button
      //Heat Up
      global.beast_skills[5, 0] = 5; //Skill ID
      global.beast_skills[5, 1] = 0; //Status
      global.beast_skills[5, 2] = 35; //Level Learned
      global.beast_skills[5, 3] = 0; //Button
      //Ionic Burst
      global.beast_skills[6, 0] = 8; //Skill ID
      global.beast_skills[6, 1] = 0; //Status
      global.beast_skills[6, 2] = 45; //Level Learned
      global.beast_skills[6, 3] = 0; //Button
      //Magmastorm
      global.beast_skills[7, 0] = 4; //Skill ID
      global.beast_skills[7, 1] = 0; //Status
      global.beast_skills[7, 2] = 55; //Level Learned
      global.beast_skills[7, 3] = 0; //Button
      //Energy Shot
      global.beast_skills[8, 0] = 51; //Skill ID
      global.beast_skills[8, 1] = 0; //Status
      global.beast_skills[8, 2] = 65; //Level Learned
      global.beast_skills[8, 3] = 0; //Button
      //Omega Crusher
      global.beast_skills[9, 0] = 38; //Skill ID
      global.beast_skills[9, 1] = 0; //Status
      global.beast_skills[9, 2] = 75; //Level Learned
      global.beast_skills[9, 3] = 0; //Button
      break;
  }
}
