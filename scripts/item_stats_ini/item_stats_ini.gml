function item_stats_ini() {
  //item_stats_ini();
  //This provides all the info of each item in the game.
  ///////////////////////////////////////////////////////////////////////////////
  //No Item
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[0, 0] = 0; //The item's id is "0"

  global.itemstats[0, 1] = 0; //For this the first item, the cost is nothing.

  global.itemstats[0, 2] = "----"; //Specifies Name.

  global.itemstats[0, 3] = "--------"; //Specifies Info.

  global.itemstats[0, 4] = 0;
  ///////////////////////////////////////////////////////////////////////////////
  //Red Herb
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[1, 0] = 1;

  global.itemstats[1, 1] = 100; //Price

  global.itemstats[1, 2] = "Red Herb"; //Name

  global.itemstats[1, 3] = "A red herb that heals wounds,#+50 HP."; //Description

  global.itemstats[1, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[1, 5] = function() {
    if (global.beast_party[7] < global.beast_party[8]) {
      global.beast_party[7] += 50;
    } else {
      item_add(1);
    }
  };
  ///////////////////////////////////////////////////////////////////////////////
  //Yellow Herb
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[2, 0] = 2;

  global.itemstats[2, 1] = 120; //Price

  global.itemstats[2, 2] = "Yellow Herb"; //Name

  global.itemstats[2, 3] =
    "A yellow herb that heals and energizes.#+40 HP +10 EP"; //Description

  global.itemstats[2, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[2, 5] =
    //Effect
    function() {
      if (
        global.beast_party[7] < global.beast_party[8] ||
        global.beast_party[10] < global.beast_party[11]
      ) {
        global.beast_party[7] += 40;
        global.beast_party[10] += 10;
      } else {
        item_add(2);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Green Herb
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[3, 0] = 3;

  global.itemstats[3, 1] = 150; //Price

  global.itemstats[3, 2] = "Green Herb"; //Name

  global.itemstats[3, 3] =
    "A green herb that heals and energizes.#+25 HP +25 EP"; //Description

  global.itemstats[3, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[3, 5] =
    //Effect
    function() {
      if (
        global.beast_party[7] < global.beast_party[8] ||
        global.beast_party[10] < global.beast_party[11]
      ) {
        global.beast_party[7] += 25;
        global.beast_party[10] += 25;
      } else {
        item_add(3);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Blue Herb
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[4, 0] = 4;

  global.itemstats[4, 1] = 200; //Price

  global.itemstats[4, 2] = "Blue Herb"; //Name

  global.itemstats[4, 3] = "A blue herb that energizes.#+50 EP"; //Description

  global.itemstats[4, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[4, 5] =
    //Effect
    function() {
      if (global.beast_party[10] < global.beast_party[11]) {
        global.beast_party[10] += 50;
      } else {
        item_add(4);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Red Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[5, 0] = 5;

  global.itemstats[5, 1] = 500; //Price

  global.itemstats[5, 2] = "Red Medicine"; //Name

  global.itemstats[5, 3] = "A mix of red herbs that heals.#+300 HP"; //Description

  global.itemstats[5, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[5, 5] =
    //Effect
    function() {
      if (global.beast_party[7] < global.beast_party[8]) {
        global.beast_party[7] += 300;
      } else {
        item_add(5);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Orange Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[6, 0] = 6;

  global.itemstats[6, 1] = 600; //Price

  global.itemstats[6, 2] = "Orange Medicine"; //Name

  global.itemstats[6, 3] =
    "A mix of red and yellow herbs that heals and energizes.#+250 HP +50 EP"; //Description

  global.itemstats[6, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[6, 5] =
    //Effect
    function() {
      if (
        global.beast_party[7] < global.beast_party[8] ||
        global.beast_party[10] < global.beast_party[11]
      ) {
        global.beast_party[7] += 250;
        global.beast_party[10] += 50;
      } else {
        item_add(6);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Yellow Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[7, 0] = 7;

  global.itemstats[7, 1] = 720; //Price

  global.itemstats[7, 2] = "Yellow Medicine"; //Name

  global.itemstats[7, 3] =
    "A mix of yellow herbs that heals and energizes.#+200 HP +100 EP"; //Description

  global.itemstats[7, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[7, 5] =
    //Effect
    function() {
      if (
        global.beast_party[7] < global.beast_party[8] ||
        global.beast_party[10] < global.beast_party[11]
      ) {
        global.beast_party[7] += 200;
        global.beast_party[10] += 100;
        var i, j;
      } else {
        item_add(7);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Green Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[8, 0] = 8;

  global.itemstats[8, 1] = 850; //Price

  global.itemstats[8, 2] = "Green Medicine"; //Name

  global.itemstats[8, 3] =
    "A mix of green herbs that heals and energizes.#+150 HP +150 EP"; //Description

  global.itemstats[8, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[8, 5] =
    //Effect
    function() {
      if (
        global.beast_party[7] < global.beast_party[8] ||
        global.beast_party[10] < global.beast_party[11]
      ) {
        global.beast_party[7] += 150;
        global.beast_party[10] += 150;
      } else {
        item_add(8);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Blue Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[9, 0] = 9;

  global.itemstats[9, 1] = 1000; //Price

  global.itemstats[9, 2] = "Blue Medicine"; //Name

  global.itemstats[9, 3] = "A mix of blue herbs that energizes.#+250 HP"; //Description

  global.itemstats[9, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[9, 5] =
    //Effect
    function() {
      if (global.beast_party[10] < global.beast_party[11]) {
        global.beast_party[10] += 300;
      } else {
        item_add(9);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Violet Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[10, 0] = 10;

  global.itemstats[10, 1] = 1500; //Price

  global.itemstats[10, 2] = "Violet Medicine"; //Name

  global.itemstats[10, 3] =
    "A mix of blue and red herbs that heals and energizes.#+250 HP +250 EP"; //Description

  global.itemstats[10, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[10, 5] =
    //Effect
    function() {
      if (
        global.beast_party[7] < global.beast_party[8] ||
        global.beast_party[10] < global.beast_party[11]
      ) {
        global.beast_party[7] += 250;
        global.beast_party[10] += 250;
      } else {
        item_add(10);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Gray Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[11, 0] = 11;

  global.itemstats[11, 1] = 1500; //Price

  global.itemstats[11, 2] = "Gray Medicine"; //Name

  global.itemstats[11, 3] =
    "A mix of many herbs that revives.#+1/2 MAX HP +1/2 MAX EP"; //Description

  global.itemstats[11, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[11, 5] =
    //Effect
    function() {
      if (
        global.beast_party[7] < global.beast_party[8] ||
        global.beast_party[10] < global.beast_party[11]
      ) {
        global.beast_party[7] += ceil(global.beast_party[8] / 2);
        global.beast_party[10] += ceil(global.beast_party[11] / 2);
      } else {
        item_add(11);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //White Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[12, 0] = 12;

  global.itemstats[12, 1] = 2000; //Price

  global.itemstats[12, 2] = "White Medicine"; //Name

  global.itemstats[12, 3] =
    "A mix of many herbs that revives.#+MAX HP +MAX EP"; //Description

  global.itemstats[12, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[12, 5] =
    //Effect
    function() {
      if (
        global.beast_party[7] < global.beast_party[8] ||
        global.beast_party[10] < global.beast_party[11]
      ) {
        global.beast_party[7] = global.beast_party[8];
        global.beast_party[10] = global.beast_party[11];
      } else {
        item_add(12);
      }
    };
  ///////////////////////////////////////////////////////////////////////////////
  //Burn Medicine
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[13, 0] = 13;

  global.itemstats[13, 1] = 200; //Price

  global.itemstats[13, 2] = "Burn Medicine"; //Name

  global.itemstats[13, 3] = "A mix herbs and flowers that heals burns.#-BURN"; //Description

  global.itemstats[13, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[13, 5] = ""; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Antidote
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[14, 0] = 14;

  global.itemstats[14, 1] = 200; //Price

  global.itemstats[14, 2] = "Antidote"; //Name

  global.itemstats[14, 3] = "A mix anti-venoms that heals poisoning.#-POISON"; //Description

  global.itemstats[14, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[14, 5] = ""; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Poda Flower
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[15, 0] = 15;

  global.itemstats[15, 1] = 400; //Price

  global.itemstats[15, 2] = "Poda Flower"; //Name

  global.itemstats[15, 3] = "A flower that boosts PWR.#+PWR"; //Description

  global.itemstats[15, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[15, 5] = "beast_party_multi(0)"; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Garda Flower
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[16, 0] = 16;

  global.itemstats[16, 1] = 400; //Price

  global.itemstats[16, 2] = "Garda Flower"; //Name

  global.itemstats[16, 3] = "A flower that boosts DEF.#+DEF"; //Description

  global.itemstats[16, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[16, 5] = "beast_party_multi(1)"; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Rapa Flower
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[17, 0] = 17;

  global.itemstats[17, 1] = 400; //Price

  global.itemstats[17, 2] = "Rapa Flower"; //Name

  global.itemstats[17, 3] = "A flower that boosts SPD.#+SPD"; //Description

  global.itemstats[17, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[17, 5] = "beast_party_multi(2)"; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Resa Flower
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[18, 0] = 18;

  global.itemstats[18, 1] = 400; //Price

  global.itemstats[18, 2] = "Resa Flower"; //Name

  global.itemstats[18, 3] = "A flower that boosts HRG.#+HRG"; //Description

  global.itemstats[18, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[18, 5] = "beast_party_multi(3)"; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Vita Flower
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[19, 0] = 19;

  global.itemstats[19, 1] = 400; //Price

  global.itemstats[19, 2] = "Vita Flower"; //Name

  global.itemstats[19, 3] = "A flower that boosts ERG.#+ERG"; //Description

  global.itemstats[19, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[19, 5] = "beast_party_multi(4)"; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Blaze Powder
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[20, 0] = 20;

  global.itemstats[20, 1] = 400; //Price

  global.itemstats[20, 2] = "Blaze Powder"; //Name

  global.itemstats[20, 3] = "An explosive fire powder.#PWR:50"; //Description

  global.itemstats[20, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[20, 5] = ""; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Freeze Powder
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[21, 0] = 21;

  global.itemstats[21, 1] = 400; //Price

  global.itemstats[21, 2] = "Freeze Powder"; //Name

  global.itemstats[21, 3] = "An explosive Icey powder.#PWR:50"; //Description

  global.itemstats[21, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[21, 5] = ""; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Quake Powder
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[22, 0] = 22;

  global.itemstats[22, 1] = 400; //Price

  global.itemstats[22, 2] = "Quake Powder"; //Name

  global.itemstats[22, 3] = "An explosive rocky powder.#PWR:50"; //Description

  global.itemstats[22, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[22, 5] = ""; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Shock Powder
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[23, 0] = 23;

  global.itemstats[23, 1] = 400; //Price

  global.itemstats[23, 2] = "Shock Powder"; //Name

  global.itemstats[23, 3] = "An explosive electric powder.#PWR:50"; //Description

  global.itemstats[23, 4] = 0; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[23, 5] = ""; //Effect
  ///////////////////////////////////////////////////////////////////////////////
  //Ore
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[24, 0] = 24;

  global.itemstats[24, 1] = 10; //Price

  global.itemstats[24, 2] = "Ore"; //Name

  global.itemstats[24, 3] = "An ore containing rare metals."; //Description

  global.itemstats[24, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[24, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Iron
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[25, 0] = 25;

  global.itemstats[25, 1] = 50; //Price

  global.itemstats[25, 2] = "Iron"; //Name

  global.itemstats[25, 3] = "An Iron bar, good to sell."; //Description

  global.itemstats[25, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[25, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Copper
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[26, 0] = 26;

  global.itemstats[26, 1] = 100; //Price

  global.itemstats[26, 2] = "Copper"; //Name

  global.itemstats[26, 3] = "A copper bar, good to sell."; //Description

  global.itemstats[26, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[26, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Silver
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[27, 0] = 27;

  global.itemstats[27, 1] = 200; //Price

  global.itemstats[27, 2] = "Silver"; //Name

  global.itemstats[27, 3] = "A silver bar, good to sell."; //Description

  global.itemstats[27, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[27, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Gold
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[28, 0] = 28;

  global.itemstats[28, 1] = 400; //Price

  global.itemstats[28, 2] = "Gold"; //Name

  global.itemstats[28, 3] = "A gold bar, good to sell."; //Description

  global.itemstats[28, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[28, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Diamond
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[29, 0] = 29;

  global.itemstats[29, 1] = 1000; //Price

  global.itemstats[29, 2] = "Diamond"; //Name

  global.itemstats[29, 3] = "A Diamond, good to sell."; //Description

  global.itemstats[29, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[29, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Twig
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[30, 0] = 30;

  global.itemstats[30, 1] = 20; //Price

  global.itemstats[30, 2] = "Twig"; //Name

  global.itemstats[30, 3] = "A twig, good to sell."; //Description

  global.itemstats[30, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[30, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Log
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[31, 0] = 31;

  global.itemstats[31, 1] = 40; //Price

  global.itemstats[31, 2] = "Log"; //Name

  global.itemstats[31, 3] = "A log, good to sell."; //Description

  global.itemstats[31, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[31, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Watch
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[32, 0] = 32;

  global.itemstats[32, 1] = 100; //Price

  global.itemstats[32, 2] = "Watch"; //Name

  global.itemstats[32, 3] = "A old watch, good to sell."; //Description

  global.itemstats[32, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[32, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Ring
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[33, 0] = 33;

  global.itemstats[33, 1] = 140; //Price

  global.itemstats[33, 2] = "Ring"; //Name

  global.itemstats[33, 3] = "A old ring, good to sell."; //Description

  global.itemstats[33, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[33, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Necklace
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[34, 0] = 34;

  global.itemstats[34, 1] = 240; //Price

  global.itemstats[34, 2] = "Necklace"; //Name

  global.itemstats[34, 3] = "A old necklace, good to sell."; //Description

  global.itemstats[34, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[34, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Bag
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[35, 0] = 35;

  global.itemstats[35, 1] = 20; //Price

  global.itemstats[35, 2] = "Bag"; //Name

  global.itemstats[35, 3] = "A leather bag, you already have one."; //Description

  global.itemstats[35, 4] = 1; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[35, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Inflatable Raft
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[36, 0] = 36;

  global.itemstats[36, 1] = 10000; //Price

  global.itemstats[36, 2] = "Raft"; //Name

  global.itemstats[36, 3] =
    "A tiny inflatable raft used to cross any open waters."; //Description

  global.itemstats[36, 4] = 2; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[36, 5] = -1;
  ///////////////////////////////////////////////////////////////////////////////
  //Inflatable Raft2
  ///////////////////////////////////////////////////////////////////////////////
  global.itemstats[37, 0] = 37;

  global.itemstats[37, 1] = 10000; //Price

  global.itemstats[37, 2] = "Raft"; //Name

  global.itemstats[37, 3] =
    "A tiny inflatable raft used to cross any open waters."; //Description

  global.itemstats[37, 4] = 2; //Pocket (0=battle,1=Common,2=Key)

  global.itemstats[37, 5] = -1;
}
