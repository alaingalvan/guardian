function item_sort() {
  //item_sort();
  ///////////////////////////////////////////////////////////////////////////////
  //This script is based on a script made by GMTechincal, and edited to meet the
  //requirements of the game, to have items sorted by id.
  ///////////////////////////////////////////////////////////////////////////////
  //This script is to only be preformed in 1 step. don't use in Step events! :C
  ///////////////////////////////////////////////////////////////////////////////
  var slt, sltnxt, tempone, temptwo, tempthree, tempfour;

  //For each member of the slot
  for (slt = 0; slt <= global.maxitems[global.inventoryline[0]]; slt += 1) {
    //Again, for each member of the slot (2nd set of passes)
    for (
      sltnxt = 0;
      sltnxt < global.maxitems[global.inventoryline[0]];
      sltnxt += 1
    ) {
      //If one member is bigger than another.
      if (
        global.inventory[global.inventoryline[0], sltnxt + 1] >
          global.inventory[global.inventoryline[0], sltnxt] &&
        global.inventory[global.inventoryline[0], sltnxt] == 0
      ) {
        //The Item ID and the Stack in a temp var
        tempthree = global.inventory[global.inventoryline[0], sltnxt + 1];
        tempfour = global.inventorystack[global.inventoryline[0], sltnxt + 1];

        //Swap
        global.inventory[global.inventoryline[0], sltnxt + 1] =
          global.inventory[global.inventoryline[0], sltnxt];
        global.inventorystack[global.inventoryline[0], sltnxt + 1] =
          global.inventorystack[global.inventoryline[0], sltnxt];
        //Return the temp var as the new previous slot.
        global.inventory[global.inventoryline[0], sltnxt] = tempthree;
        global.inventorystack[global.inventoryline[0], sltnxt] = tempfour;
      } else if (
        global.inventory[global.inventoryline[0], sltnxt + 1] <
          global.inventory[global.inventoryline[0], sltnxt] &&
        !global.inventory[global.inventoryline[0], sltnxt + 1] == 0
      ) {
        tempone = global.inventory[global.inventoryline[0], sltnxt];
        temptwo = global.inventorystack[global.inventoryline[0], sltnxt];
        global.inventory[global.inventoryline[0], sltnxt] =
          global.inventory[global.inventoryline[0], sltnxt + 1];
        global.inventorystack[global.inventoryline[0], sltnxt] =
          global.inventorystack[global.inventoryline[0], sltnxt + 1];

        global.inventory[global.inventoryline[0], sltnxt + 1] = tempone;
        global.inventorystack[global.inventoryline[0], sltnxt + 1] = temptwo;
      }
    }
  }
  exit;
}
