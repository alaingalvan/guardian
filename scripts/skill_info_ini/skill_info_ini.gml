function skill_info_ini() {
  //skill_info_ini();
  //By Alain Galvan
  ///////////////////////////////////////////////////////////////////////////////
  //No Skill
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[0, 0] = "----"; //Name

  global.skill_info[0, 1] = "----"; //Element

  global.skill_info[0, 2] = "--------"; //Description

  global.skill_info[0, 3] = -1; //Object

  global.skill_info[0, 4] = 0; //Power

  global.skill_info[0, 5] = 0; //Cost

  global.skill_info[0, 6] = 0; //Cast Time

  ///////////////////////////////////////////////////////////////////////////////
  //Fire Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[1, 0] = "Fire Shot"; //Name

  global.skill_info[1, 1] = "Fire"; //Element

  global.skill_info[1, 2] = "A small fireball is hurled at foe."; //Description

  global.skill_info[1, 3] = obj_skill_fireshot; //Object

  global.skill_info[1, 4] = 35; //Power

  global.skill_info[1, 5] = 1; //Cost

  global.skill_info[1, 6] = 1; //Cast Time

  global.skill_info[1, 7] = 160; //AI Distance in px
  ///////////////////////////////////////////////////////////////////////////////
  //Blaze Tower
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[2, 0] = "Blaze Tower"; //Name

  global.skill_info[2, 1] = "Fire"; //Element

  global.skill_info[2, 2] = "Fiery towers are sent like shock waves. "; //Description

  global.skill_info[2, 3] = obj_skill_blazetower; //Object

  global.skill_info[2, 4] = 50; //Power

  global.skill_info[2, 5] = 15; //Cost

  global.skill_info[2, 6] = 2; //Cast Time

  ///////////////////////////////////////////////////////////////////////////////
  //Fire Star
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[3, 0] = "Fire Star"; //Name

  global.skill_info[3, 1] = "Fire"; //Element

  global.skill_info[3, 2] = "A large Ball of fire hurled at a foe."; //Description

  global.skill_info[3, 3] = obj_skill_firestar; //Object

  global.skill_info[3, 4] = 75; //Power

  global.skill_info[3, 5] = 40; //Cost

  global.skill_info[3, 6] = 4; //Cast Time

  ///////////////////////////////////////////////////////////////////////////////
  //Magmastorm
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[4, 0] = "Magmastorm"; //Name

  global.skill_info[4, 1] = "Fire"; //Element

  global.skill_info[4, 2] = "A towers of magma dance arround you."; //Description

  global.skill_info[4, 3] = obj_skill_fireshot; //Object

  global.skill_info[4, 4] = 100; //Power

  global.skill_info[4, 5] = 50; //Cost

  global.skill_info[4, 6] = 5; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Heat Up
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[5, 0] = "Heat Up"; //Name

  global.skill_info[5, 1] = "Fire"; //Element

  global.skill_info[5, 2] = "You pause to heat your body.#+PWR +SPD"; //Description

  global.skill_info[5, 3] = obj_skill_heatup; //Object

  global.skill_info[5, 4] = 0; //Power

  global.skill_info[5, 5] = 100; //Cost

  global.skill_info[5, 6] = 10; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Ore Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[6, 0] = "Ore Shot"; //Name

  global.skill_info[6, 1] = "Metal"; //Element

  global.skill_info[6, 2] = "An ore is shot at your foe."; //Description

  global.skill_info[6, 3] = obj_skill_fireshot; //Object

  global.skill_info[6, 4] = 35; //Power

  global.skill_info[6, 5] = 1; //Cost

  global.skill_info[6, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Data Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[7, 0] = "Data Shot"; //Name

  global.skill_info[7, 1] = "Metal"; //Element

  global.skill_info[7, 2] = "Radioactive waves shot at your foe."; //Description

  global.skill_info[7, 3] = obj_skill_fireshot; //Object

  global.skill_info[7, 4] = 45; //Power

  global.skill_info[7, 5] = 5; //Cost

  global.skill_info[7, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Ionic Burst
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[8, 0] = "Ionic Burst"; //Name

  global.skill_info[8, 1] = "Metal"; //Element

  global.skill_info[8, 2] =
    "A Strong Burst of ionic particles is shot at foe."; //Description

  global.skill_info[8, 3] = obj_skill_ionicburst_ini; //Object

  global.skill_info[8, 4] = 65; //Power

  global.skill_info[8, 5] = 35; //Cost

  global.skill_info[8, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Particle Pulse
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[9, 0] = "Particle Pulse"; //Name

  global.skill_info[9, 1] = "Metal"; //Element

  global.skill_info[9, 2] =
    "A Fast Shot of dense, radioactive particles is hurled at foe."; //Description

  global.skill_info[9, 3] = obj_skill_fireshot; //Object

  global.skill_info[9, 4] = 100; //Power

  global.skill_info[9, 5] = 50; //Cost

  global.skill_info[9, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Repair
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[10, 0] = "Repair"; //Name

  global.skill_info[10, 1] = "Metal"; //Element

  global.skill_info[10, 2] = "The user pauses and repairs himself.#+10% HP"; //Description

  global.skill_info[10, 3] = obj_skill_fireshot; //Object

  global.skill_info[10, 4] = 0; //Power

  global.skill_info[10, 5] = 30; //Cost

  global.skill_info[10, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Ice Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[11, 0] = "Ice Shot"; //Name

  global.skill_info[11, 1] = "Ice"; //Element

  global.skill_info[11, 2] = "A block of dense, sharp ice is hurled at foe."; //Description

  global.skill_info[11, 3] = obj_skill_iceshot; //Object

  global.skill_info[11, 4] = 35; //Power

  global.skill_info[11, 5] = 1; //Cost

  global.skill_info[11, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Freeze Breath
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[12, 0] = "Freeze Breath"; //Name

  global.skill_info[12, 1] = "Ice"; //Element

  global.skill_info[12, 2] = "A strong blast of frozen air is shot at foe."; //Description

  global.skill_info[12, 3] = obj_skill_fireshot; //Object

  global.skill_info[12, 4] = 50; //Power

  global.skill_info[12, 5] = 5; //Cost

  global.skill_info[12, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Snow Boulder
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[13, 0] = "Snow Boulder"; //Name

  global.skill_info[13, 1] = "Ice"; //Element

  global.skill_info[13, 2] =
    "A ball of snow is shot, getting stronger with time."; //Description

  global.skill_info[13, 3] = obj_skill_fireshot; //Object

  global.skill_info[13, 4] = 20; //Power

  global.skill_info[13, 5] = 20; //Cost

  global.skill_info[13, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Ice Huricane
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[14, 0] = "Ice Razor"; //Name

  global.skill_info[14, 1] = "Ice"; //Element

  global.skill_info[14, 2] = "A blast of frozen wind is shot like a razor."; //Description

  global.skill_info[14, 3] = obj_skill_fireshot; //Object

  global.skill_info[14, 4] = 75; //Power

  global.skill_info[14, 5] = 10; //Cost

  global.skill_info[14, 6] = 5; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Snow Avalance
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[15, 0] = "Snow Avalanche"; //Name

  global.skill_info[15, 1] = "Ice/Rock"; //Element

  global.skill_info[15, 2] = "A Ice and Rock are repeatedly at foe."; //Description

  global.skill_info[15, 3] = obj_skill_fireshot; //Object

  global.skill_info[15, 4] = 15; //Power

  global.skill_info[15, 5] = 40; //Cost

  global.skill_info[15, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Water Sphere
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[16, 0] = "Water Sphere"; //Name

  global.skill_info[16, 1] = "Water"; //Element

  global.skill_info[16, 2] = "A Blast of water is shot at foe."; //Description

  global.skill_info[16, 3] = obj_skill_watersphere; //Object

  global.skill_info[16, 4] = 25; //Power

  global.skill_info[16, 5] = 1; //Cost

  global.skill_info[16, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Tsunami
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[17, 0] = "Tsunami"; //Name

  global.skill_info[17, 1] = "Water"; //Element

  global.skill_info[17, 2] = "A strong wave hits the foe, could stun."; //Description

  global.skill_info[17, 3] = obj_skill_pressureblast_ini; //Object

  global.skill_info[17, 4] = 50; //Power

  global.skill_info[17, 5] = 5; //Cost

  global.skill_info[17, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Pressure Blast
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[18, 0] = "Pressure Blast"; //Name

  global.skill_info[18, 1] = "Water"; //Element

  global.skill_info[18, 2] = "A pressured blast of water is shot at foe."; //Description

  global.skill_info[18, 3] = obj_skill_pressureblast_ini; //Object

  global.skill_info[18, 4] = 10; //Power

  global.skill_info[18, 5] = 5; //Cost

  global.skill_info[18, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Huricane
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[19, 0] = "Huricane"; //Name

  global.skill_info[19, 1] = "Water/Wind"; //Element

  global.skill_info[19, 2] = "A blast of water and wind is hurled at foe."; //Description

  global.skill_info[19, 3] = obj_skill_fireshot; //Object

  global.skill_info[19, 4] = 20; //Power

  global.skill_info[19, 5] = 50; //Cost

  global.skill_info[19, 6] = 5; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Mist
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[20, 0] = "Mist"; //Name

  global.skill_info[20, 1] = "Water"; //Element

  global.skill_info[20, 2] = "A wave of mist covers the area.#+SPD"; //Description

  global.skill_info[20, 3] = obj_skill_fireshot; //Object

  global.skill_info[20, 4] = 0; //Power

  global.skill_info[20, 5] = 5; //Cost

  global.skill_info[20, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Rock Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[21, 0] = "Rock Shot"; //Name

  global.skill_info[21, 1] = "Rock"; //Element

  global.skill_info[21, 2] = "A single boulder is hurled at foe."; //Description

  global.skill_info[21, 3] = obj_skill_rockshot; //Object

  global.skill_info[21, 4] = 35; //Power

  global.skill_info[21, 5] = 1; //Cost

  global.skill_info[21, 6] = 1; //Cast Time

  global.skill_info[21, 7] = 320; //AI Distance in px
  ///////////////////////////////////////////////////////////////////////////////
  //Drill Stab
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[22, 0] = "Drill Stab"; //Name

  global.skill_info[22, 1] = "Rock"; //Element

  global.skill_info[22, 2] = "The foe is stab with a drill like extremity."; //Description

  global.skill_info[22, 3] = obj_skill_fireshot; //Object

  global.skill_info[22, 4] = 50; //Power

  global.skill_info[22, 5] = 4; //Cost

  global.skill_info[22, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Obelisk Swing
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[23, 0] = "Obelisk Swing"; //Name

  global.skill_info[23, 1] = "Rock"; //Element

  global.skill_info[23, 2] =
    "The foe is hit with a large obelisk like object."; //Description

  global.skill_info[23, 3] = obj_skill_fireshot; //Object

  global.skill_info[23, 4] = 75; //Power

  global.skill_info[23, 5] = 8; //Cost

  global.skill_info[23, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Earth Fissure
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[24, 0] = "Earth Fissure"; //Name

  global.skill_info[24, 1] = "Rock"; //Element

  global.skill_info[24, 2] =
    "The earth shifts arround you, causing large fissures to form."; //Description

  global.skill_info[24, 3] = obj_skill_fireshot; //Object

  global.skill_info[24, 4] = 100; //Power

  global.skill_info[24, 5] = 55; //Cost

  global.skill_info[24, 6] = 5; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Terra Shield
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[25, 0] = "Terra Shield"; //Name

  global.skill_info[25, 1] = "Rock"; //Element

  global.skill_info[25, 2] = "Large rocks form and shield you."; //Description

  global.skill_info[25, 3] = obj_skill_fireshot; //Object

  global.skill_info[25, 4] = 0; //Power

  global.skill_info[25, 5] = 25; //Cost

  global.skill_info[25, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Blade Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[26, 0] = "Blade Shot"; //Name

  global.skill_info[26, 1] = "Grass"; //Element

  global.skill_info[26, 2] = "Several Sharp leaves are shot at foe."; //Description

  global.skill_info[26, 3] = obj_skill_bladeshot_ini; //Object

  global.skill_info[26, 4] = 10; //Power

  global.skill_info[26, 5] = 1; //Cost

  global.skill_info[26, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Wood Bash
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[27, 0] = "Wood Bash"; //Name

  global.skill_info[27, 1] = "Grass"; //Element

  global.skill_info[27, 2] = "A large trunk is hurled at foe"; //Description

  global.skill_info[27, 3] = obj_skill_fireshot; //Object

  global.skill_info[27, 4] = 50; //Power

  global.skill_info[27, 5] = 3; //Cost

  global.skill_info[27, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Root Quake
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[28, 0] = "Root Quake"; //Name

  global.skill_info[28, 1] = "Grass"; //Element

  global.skill_info[28, 2] = "Roots are shot arround you, stealing health."; //Description

  global.skill_info[28, 3] = obj_skill_fireshot; //Object

  global.skill_info[28, 4] = 60; //Power

  global.skill_info[28, 5] = 20; //Cost

  global.skill_info[28, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Hyper Pincers
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[29, 0] = "Hyper Pincers"; //Name

  global.skill_info[29, 1] = "Grass"; //Element

  global.skill_info[29, 2] = "Strong Pincers Crush foes."; //Description

  global.skill_info[29, 3] = obj_skill_fireshot; //Object

  global.skill_info[29, 4] = 150; //Power

  global.skill_info[29, 5] = 25; //Cost

  global.skill_info[29, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Enroot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[30, 0] = "Enroot"; //Name

  global.skill_info[30, 1] = "Grass"; //Element

  global.skill_info[30, 2] =
    "The player pauses and restores and steals health."; //Description

  global.skill_info[30, 3] = obj_skill_fireshot; //Object

  global.skill_info[30, 4] = 10; //Power

  global.skill_info[30, 5] = 50; //Cost

  global.skill_info[30, 6] = 5; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Poison Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[31, 0] = "Poison Shot"; //Name

  global.skill_info[31, 1] = "Poison"; //Element

  global.skill_info[31, 2] = "A ball of poison is shot at foe."; //Description

  global.skill_info[31, 3] = obj_skill_poisonshot; //Object

  global.skill_info[31, 4] = 35; //Power

  global.skill_info[31, 5] = 1; //Cost

  global.skill_info[31, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Poison Cloud
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[32, 0] = "Poison Cloud"; //Name

  global.skill_info[32, 1] = "Poison"; //Element

  global.skill_info[32, 2] = "A large cloud of poison surrounds the user."; //Description

  global.skill_info[32, 3] = obj_skill_fireshot; //Object

  global.skill_info[32, 4] = 50; //Power

  global.skill_info[32, 5] = 10; //Cost

  global.skill_info[32, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Toxic Spray
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[33, 0] = "Toxic Spray"; //Name

  global.skill_info[33, 1] = "Poison"; //Element

  global.skill_info[33, 2] = "A toxic spray is shot at foe.#+POISON"; //Description

  global.skill_info[33, 3] = obj_skill_fireshot; //Object

  global.skill_info[33, 4] = 50; //Power

  global.skill_info[33, 5] = 1; //Cost

  global.skill_info[33, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Poison Lance
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[34, 0] = "Poison Lance"; //Name

  global.skill_info[34, 1] = "Poison"; //Element

  global.skill_info[34, 2] = "A quick jab of poison is stabed into foe."; //Description

  global.skill_info[34, 3] = obj_skill_fireshot; //Object

  global.skill_info[34, 4] = 120; //Power

  global.skill_info[34, 5] = 20; //Cost

  global.skill_info[34, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Black Disease
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[35, 0] = "Black Disease"; //Name

  global.skill_info[35, 1] = "Poison"; //Element

  global.skill_info[35, 2] = "A Wave of poison blasts everyone arround."; //Description

  global.skill_info[35, 3] = obj_skill_fireshot; //Object

  global.skill_info[35, 4] = 100; //Power

  global.skill_info[35, 5] = 50; //Cost

  global.skill_info[35, 6] = 5; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Ram
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[36, 0] = "Ram"; //Name

  global.skill_info[36, 1] = "Combat"; //Element

  global.skill_info[36, 2] = "The user rams the foe."; //Description

  global.skill_info[36, 3] = obj_skill_ram; //Object

  global.skill_info[36, 4] = 40; //Power

  global.skill_info[36, 5] = 1; //Cost

  global.skill_info[36, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Slash
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[37, 0] = "Slash"; //Name

  global.skill_info[37, 1] = "Combat"; //Element

  global.skill_info[37, 2] = "The user slashes foe."; //Description

  global.skill_info[37, 3] = obj_skill_slash; //Object

  global.skill_info[37, 4] = 50; //Power

  global.skill_info[37, 5] = 5; //Cost

  global.skill_info[37, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Omega Crusher
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[38, 0] = "Omega Crusher"; //Name

  global.skill_info[38, 1] = "Combat"; //Element

  global.skill_info[38, 2] = "The user attacks everything arround him."; //Description

  global.skill_info[38, 3] = obj_skill_fireshot; //Object

  global.skill_info[38, 4] = 75; //Power

  global.skill_info[38, 5] = 35; //Cost

  global.skill_info[38, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //1000 Fists
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[39, 0] = "1000 Fists"; //Name

  global.skill_info[39, 1] = "Combat"; //Element

  global.skill_info[39, 2] = "The user attacks with many fists."; //Description

  global.skill_info[39, 3] = obj_skill_fireshot; //Object

  global.skill_info[39, 4] = 10; //Power

  global.skill_info[39, 5] = 50; //Cost

  global.skill_info[39, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Direct Energy
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[40, 0] = "Direct Energy"; //Name

  global.skill_info[40, 1] = "Combat"; //Element

  global.skill_info[40, 2] = "The user focuses his energy.#+10% EP +PWR +SPD"; //Description

  global.skill_info[40, 3] = obj_skill_fireshot; //Object

  global.skill_info[40, 4] = 0; //Power

  global.skill_info[40, 5] = 40; //Cost

  global.skill_info[40, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Air Cutter
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[41, 0] = "Air Cutter"; //Name

  global.skill_info[41, 1] = "Wind"; //Element

  global.skill_info[41, 2] = "A blast of cutting wind is hurled at foe"; //Description

  global.skill_info[41, 3] = obj_skill_aircutter; //Object

  global.skill_info[41, 4] = 35; //Power

  global.skill_info[41, 5] = 1; //Cost

  global.skill_info[41, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Duo Winds
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[42, 0] = "Duo Winds"; //Name

  global.skill_info[42, 1] = "Wind"; //Element

  global.skill_info[42, 2] = "Two wind blades extend from the user."; //Description

  global.skill_info[42, 3] = obj_skill_duowinds; //Object

  global.skill_info[42, 4] = 50; //Power

  global.skill_info[42, 5] = 15; //Cost

  global.skill_info[42, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Tornado
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[43, 0] = "Tornado"; //Name

  global.skill_info[43, 1] = "Wind"; //Element

  global.skill_info[43, 2] = "A strong tornado is cast by the user."; //Description

  global.skill_info[43, 3] = obj_skill_fireshot; //Object

  global.skill_info[43, 4] = 75; //Power

  global.skill_info[43, 5] = 35; //Cost

  global.skill_info[43, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Gust Blast
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[44, 0] = "Gust Blast"; //Name

  global.skill_info[44, 1] = "Wind"; //Element

  global.skill_info[44, 2] = "A blast of wind is shot with a large radius."; //Description

  global.skill_info[44, 3] = obj_skill_fireshot; //Object

  global.skill_info[44, 4] = 100; //Power

  global.skill_info[44, 5] = 50; //Cost

  global.skill_info[44, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Wind Canceler
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[45, 0] = "Wind Canceler"; //Name

  global.skill_info[45, 1] = "Wind"; //Element

  global.skill_info[45, 2] = "All attacks are canceled arround you."; //Description

  global.skill_info[45, 3] = obj_skill_fireshot; //Object

  global.skill_info[45, 4] = 0; //Power

  global.skill_info[45, 5] = 75; //Cost

  global.skill_info[45, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Spark Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[46, 0] = "Spark Shot"; //Name

  global.skill_info[46, 1] = "Electric"; //Element

  global.skill_info[46, 2] = "A ball of electricity is hurled at foe."; //Description

  global.skill_info[46, 3] = obj_skill_sparkshot; //Object

  global.skill_info[46, 4] = 35; //Power

  global.skill_info[46, 5] = 1; //Cost

  global.skill_info[46, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Electric Bomb
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[47, 0] = "Electric Bomb"; //Name

  global.skill_info[47, 1] = "Electric"; //Element

  global.skill_info[47, 2] = "A shocking wave is spread arround."; //Description

  global.skill_info[47, 3] = obj_skill_fireshot; //Object

  global.skill_info[47, 4] = 50; //Power

  global.skill_info[47, 5] = 25; //Cost

  global.skill_info[47, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Thunderstorm
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[48, 0] = "Thunderstorm"; //Name

  global.skill_info[48, 1] = "Electric/Water"; //Element

  global.skill_info[48, 2] = "A strong storm that shocks and soaks."; //Description

  global.skill_info[48, 3] = obj_skill_fireshot; //Object

  global.skill_info[48, 4] = 75; //Power

  global.skill_info[48, 5] = 45; //Cost

  global.skill_info[48, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Electron Beam
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[49, 0] = "Electron Beam"; //Name

  global.skill_info[49, 1] = "Electic"; //Element

  global.skill_info[49, 2] =
    "A concentrated beam of electricity is shot at foe."; //Description

  global.skill_info[49, 3] = obj_skill_fireshot; //Object

  global.skill_info[49, 4] = 100; //Power

  global.skill_info[49, 5] = 50; //Cost

  global.skill_info[49, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Atomic Blast
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[50, 0] = "Atomic Blast"; //Name

  global.skill_info[50, 1] = "Electric"; //Element

  global.skill_info[50, 2] = "A shockwave of atomic power is hurled at foe."; //Description

  global.skill_info[50, 3] = obj_skill_fireshot; //Object

  global.skill_info[50, 4] = 120; //Power

  global.skill_info[50, 5] = 65; //Cost

  global.skill_info[50, 6] = 5; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Energy Shot
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[51, 0] = "Energy Shot"; //Name

  global.skill_info[51, 1] = "Light"; //Element

  global.skill_info[51, 2] = "Solar energy is shot at foe, could burn."; //Description

  global.skill_info[51, 3] = obj_skill_fireshot; //Object

  global.skill_info[51, 4] = 45; //Power

  global.skill_info[51, 5] = 2; //Cost

  global.skill_info[51, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Light Sword
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[52, 0] = "Light Sword"; //Name

  global.skill_info[52, 1] = "Light"; //Element

  global.skill_info[52, 2] = "a slash of light is swong by the user."; //Description

  global.skill_info[52, 3] = obj_skill_fireshot; //Object

  global.skill_info[52, 4] = 75; //Power

  global.skill_info[52, 5] = 30; //Cost

  global.skill_info[52, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Shine Sol
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[53, 0] = "Shine Sol"; //Name

  global.skill_info[53, 1] = "Light"; //Element

  global.skill_info[53, 2] =
    "A sun of blinding light is shot at foe, could blind."; //Description

  global.skill_info[53, 3] = obj_skill_fireshot; //Object

  global.skill_info[53, 4] = 100; //Power

  global.skill_info[53, 5] = 75; //Cost

  global.skill_info[53, 6] = 2; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Healing
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[54, 0] = "Healing"; //Name

  global.skill_info[54, 1] = "Light"; //Element

  global.skill_info[54, 2] =
    "The user pauses for a long time to restore health."; //Description

  global.skill_info[54, 3] = obj_skill_fireshot; //Object

  global.skill_info[54, 4] = 0; //Power

  global.skill_info[54, 5] = 100; //Cost

  global.skill_info[54, 6] = 8; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Purification
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[55, 0] = "Purification"; //Name

  global.skill_info[55, 1] = "Light"; //Element

  global.skill_info[55, 2] = "All status afflictions are nullified."; //Description

  global.skill_info[55, 3] = obj_skill_fireshot; //Object

  global.skill_info[55, 4] = 0; //Power

  global.skill_info[55, 5] = 35; //Cost

  global.skill_info[55, 6] = 4; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Dusk Ball
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[56, 0] = "Dusk Ball"; //Name

  global.skill_info[56, 1] = "Dark"; //Element

  global.skill_info[56, 2] = "A ball of darkness is shot at foe."; //Description

  global.skill_info[56, 3] = obj_skill_duskball; //Object

  global.skill_info[56, 4] = 35; //Power

  global.skill_info[56, 5] = 1; //Cost

  global.skill_info[56, 6] = 1; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Night Blind
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[57, 0] = "Night Blind"; //Name

  global.skill_info[57, 1] = "Wind"; //Element

  global.skill_info[57, 2] = "The foe is attacked with a blinding light."; //Description

  global.skill_info[57, 3] = obj_skill_fireshot; //Object

  global.skill_info[57, 4] = 0; //Power

  global.skill_info[57, 5] = 35; //Cost

  global.skill_info[57, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Mind Currupt
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[58, 0] = "Mind Currupt"; //Name

  global.skill_info[58, 1] = "Dark"; //Element

  global.skill_info[58, 2] = "The foe is confused with a strong spray."; //Description

  global.skill_info[58, 3] = obj_skill_fireshot; //Object

  global.skill_info[58, 4] = 0; //Power

  global.skill_info[58, 5] = 40; //Cost

  global.skill_info[58, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Chaos Shadow
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[59, 0] = "Chaos Shadow"; //Name

  global.skill_info[59, 1] = "Dark"; //Element

  global.skill_info[59, 2] =
    "A shadow extends from the user, harming all arround."; //Description

  global.skill_info[59, 3] = obj_skill_fireshot; //Object

  global.skill_info[59, 4] = 85; //Power

  global.skill_info[59, 5] = 75; //Cost

  global.skill_info[59, 6] = 3; //Cast Time
  ///////////////////////////////////////////////////////////////////////////////
  //Chaos Star
  ///////////////////////////////////////////////////////////////////////////////
  global.skill_info[60, 0] = "Chaos Star"; //Name

  global.skill_info[60, 1] = "Dark/Poison"; //Element

  global.skill_info[60, 2] = "A legendary move which few beasts know."; //Description

  global.skill_info[60, 3] = obj_skill_fireshot; //Object

  global.skill_info[60, 4] = 150; //Power

  global.skill_info[60, 5] = 100; //Cost

  global.skill_info[60, 6] = 6; //Cast Time
}
