function beast_stats_ini() {
  //Guardian Stat System
  //By Alain Galvan
  ///////////////////////////////////////////////////////////////////////////////
  //There are 3 vars in control of your beast. They are global.beast_stats,
  //global.beast_skills, and global.beast_party. Depending on what beast you pick
  //in the begining, the set stats on that beast are applied from
  //global.beast_stats to global.beast_party. The skills of each beast will be
  //asigned to them via a simple "switch (global.beast_party[0])" fuction. :D
  //You can remember any skills you learned, but you can't use them all. To keep
  //The game from glitching, each beast will have a maximum of 20 moves they can
  //learn.

  //In addition, the vars global.beast_id and global.beast_name determine your
  //beast's id and name for the begining of the game.
  ///////////////////////////////////////////////////////////////////////////////
  //BEAST STATS
  ///////////////////////////////////////////////////////////////////////////////
  //-----------------------------------Zero------------------------------------\\
  //Species
  global.beast_stats[0, 0] = "--------";
  //Element 1
  global.beast_stats[0, 1] = "----";
  //Element 2
  global.beast_stats[0, 2] = "----";
  //Description
  global.beast_stats[0, 3] = "----------";
  //Health
  global.beast_stats[0, 4] = 0;
  //Energy
  global.beast_stats[0, 5] = 0;
  //Power
  global.beast_stats[0, 6] = 0;
  //Defence
  global.beast_stats[0, 7] = 0;
  //Speed
  global.beast_stats[0, 8] = 0;
  //Health Regen
  global.beast_stats[0, 9] = 0;
  //Energy Regen
  global.beast_stats[0, 10] = 0;
  //Max Skills
  global.beast_stats[0, 11] = 0;
  //----------------------------------Phlame-----------------------------------\\
  //Species
  global.beast_stats[1, 0] = "Diaska";
  //Element 1
  global.beast_stats[1, 1] = "Fire";
  //Element 2
  global.beast_stats[1, 2] = "Metal";
  //Description
  global.beast_stats[1, 3] =
    "Diaska eventually form a metallic exoskeleton, and become dangerous creatures both in attack and defense.";
  //Health
  global.beast_stats[1, 4] = 290;
  //Energy
  global.beast_stats[1, 5] = 710;
  //Power
  global.beast_stats[1, 6] = 155;
  //Defence
  global.beast_stats[1, 7] = 75;
  //Speed
  global.beast_stats[1, 8] = 130;
  //Health Regen
  global.beast_stats[1, 9] = 100;
  //Energy Regen
  global.beast_stats[1, 10] = 55;
  //----------------------------------Shard-----------------------------------\\
  //Species
  global.beast_stats[2, 0] = "Icwol";
  //Element 1
  global.beast_stats[2, 1] = "Ice";
  //Element 2
  global.beast_stats[2, 2] = "Water";
  //Description
  global.beast_stats[2, 3] =
    "These beasts are know to be loners, on account of their species never establishing a coalition.";
  //Health
  global.beast_stats[2, 4] = 310;
  //Energy
  global.beast_stats[2, 5] = 690;
  //Power
  global.beast_stats[2, 6] = 100;
  //Defence
  global.beast_stats[2, 7] = 50;
  //Speed
  global.beast_stats[2, 8] = 200;
  //Health Regen
  global.beast_stats[2, 9] = 115;
  //Energy Regen
  global.beast_stats[2, 10] = 50;
  //----------------------------------Root-----------------------------------\\
  //Species
  global.beast_stats[3, 0] = "Warja";
  //Element 1
  global.beast_stats[3, 1] = "Grass";
  //Element 2
  global.beast_stats[3, 2] = "Rock";
  //Description
  global.beast_stats[3, 3] =
    "Most Root babies are killed as soon as they are spoted, on account of their enormous adult size.";
  //Health
  global.beast_stats[3, 4] = 500;
  //Energy
  global.beast_stats[3, 5] = 350;
  //Power
  global.beast_stats[3, 6] = 250;
  //Defence
  global.beast_stats[3, 7] = 200;
  //Speed
  global.beast_stats[3, 8] = 50;
  //Health Regen
  global.beast_stats[3, 9] = 100;
  //Energy Regen
  global.beast_stats[3, 10] = 65;
  //---------------------------------Spark-----------------------------------\\
  //Species
  global.beast_stats[4, 0] = "Iolix";
  //Element 1
  global.beast_stats[4, 1] = "Electric";
  //Element 2
  global.beast_stats[4, 2] = "Wind";
  //Description
  global.beast_stats[4, 3] =
    "This species was once belived to cause lightning and thunder by ancient beasts.";
  //Health
  global.beast_stats[4, 4] = 400;
  //Energy
  global.beast_stats[4, 5] = 400;
  //Power
  global.beast_stats[4, 6] = 215;
  //Defence
  global.beast_stats[4, 7] = 200;
  //Speed
  global.beast_stats[4, 8] = 200;
  //Health Regen
  global.beast_stats[4, 9] = 50;
  //Energy Regen
  global.beast_stats[4, 10] = 50;
  //---------------------------------Searol-----------------------------------\\
  //Species
  global.beast_stats[5, 0] = "Searol";
  //Element 1
  global.beast_stats[5, 1] = "Water";
  //Element 2
  global.beast_stats[5, 2] = "Rock";
  //Description
  global.beast_stats[5, 3] =
    "They grow to enourmous sizes, and as they grow they change shape in the process.";
  //Health
  global.beast_stats[5, 4] = 700;
  //Energy
  global.beast_stats[5, 5] = 350;
  //Power
  global.beast_stats[5, 6] = 200;
  //Defence
  global.beast_stats[5, 7] = 115;
  //Speed
  global.beast_stats[5, 8] = 50;
  //Health Regen
  global.beast_stats[5, 9] = 50;
  //Energy Regen
  global.beast_stats[5, 10] = 50;
  //---------------------------------Shadous-----------------------------------\\
  //Species
  global.beast_stats[6, 0] = "Shadous";
  //Element 1
  global.beast_stats[6, 1] = "Dark";
  //Element 2
  global.beast_stats[6, 2] = "Poison";
  //Description
  global.beast_stats[6, 3] =
    "Thought to be a thing of nightmares, Shadous are actually very calm and rarely attack. Their rival species is Diasha.";
  //Health
  global.beast_stats[6, 4] = 300;
  //Energy
  global.beast_stats[6, 5] = 500;
  //Power
  global.beast_stats[6, 6] = 150;
  //Defence
  global.beast_stats[6, 7] = 200;
  //Speed
  global.beast_stats[6, 8] = 150;
  //Health Regen
  global.beast_stats[6, 9] = 150;
  //Energy Regen
  global.beast_stats[6, 10] = 65;
  //---------------------------------Shame-----------------------------------\\
  //Species
  global.beast_stats[7, 0] = "Shame";
  //Element 1
  global.beast_stats[7, 1] = "Dark";
  //Element 2
  global.beast_stats[7, 2] = "Fire";
  //Description
  global.beast_stats[7, 3] =
    "The Shadow Phlame, the result of the mixed offspring of a Diasha and Shadous.";
  //Health
  global.beast_stats[7, 4] = 350;
  //Energy
  global.beast_stats[7, 5] = 550;
  //Power
  global.beast_stats[7, 6] = 200;
  //Defence
  global.beast_stats[7, 7] = 100;
  //Speed
  global.beast_stats[7, 8] = 150;
  //Health Regen
  global.beast_stats[7, 9] = 100;
  //Energy Regen
  global.beast_stats[7, 10] = 65;
  //---------------------------------Slaughter-----------------------------------\\
  //Species
  global.beast_stats[8, 0] = "Slaughter";
  //Element 1
  global.beast_stats[8, 1] = "Combat";
  //Element 2
  global.beast_stats[8, 2] = "Rock";
  //Description
  global.beast_stats[8, 3] =
    "Slaughter begin their lives very docile, but eventually grow to become extremely strong.";
  //Health
  global.beast_stats[8, 4] = 300;
  //Energy
  global.beast_stats[8, 5] = 500;
  //Power
  global.beast_stats[8, 6] = 450;
  //Defence
  global.beast_stats[8, 7] = 50;
  //Speed
  global.beast_stats[8, 8] = 200;
  //Health Regen
  global.beast_stats[8, 9] = 5;
  //Energy Regen
  global.beast_stats[8, 10] = 10;
}
