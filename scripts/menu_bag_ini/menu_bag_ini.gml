function menu_bag_ini() {
  //menu_bag_ini();
  //By Alain Galvan
  //Now the array maxitem's X value is how many pockets you have.
  //Lets Say we have a battle pocket, common item pocket, AG pocket,
  //and Key Item Pocket. Then each one should be assigned a particular value.
  //Use constants, or just use the number.
  ////////////////////////////////////////////////////////////////////////////////
  //Now what about the "inventory" array? It's X value is the bag that its in.
  //It's y value is the item slot it contains.
  //Now we want to fill the array with the maximum value of items the bag can fit
  //so we just use a "for" statement to do that with a random var.
  ///////////////////////////////////////////////////////////////////////////////
  //We also Have item count. Since GM doesn't have 3D arrays, I have chosen rather
  //To make two arrays, one is the item that the array has, the other is how many.
  //Ok?
  ///////////////////////////////////////////////////////////////////////////////
  //Now what about the array "Inventory line?" That is used for drawing the
  //Inventory, because you can't draw all the inventory at once.
  ///////////////////////////////////////////////////////////////////////////////
  // I set all the bag limits at 10.
  ///////////////////////////////////////////////////////////////////////////////

  global.maxitems[0] = 10;
  global.maxitems[1] = 10;
  global.maxitems[2] = 10;

  ///////////////////////////////////////////////////////////////////////////////
  //Initializes array for entire game.

  for (a = 0; a <= global.maxitems[0]; a += 1) {
    for (b = 0; b <= global.maxitems[1]; b += 1) {
      for (c = 0; c <= global.maxitems[2]; c += 1) {
        global.inventory[0, a] = 0;
        global.inventory[1, b] = 0;
        global.inventory[2, c] = 0;

        global.inventorystack[0, a] = 0;
        global.inventorystack[1, b] = 0;
        global.inventorystack[2, c] = 0;
      }
    }
  }
  ///////////////////////////////////////////////////////////////////////////////

  //For this var, the 0 value is what pocket you are in.
  //THe 1 value is what line on that pocket your in.
  global.inventoryline[0] = 0;
  global.inventoryline[1] = 0;
  ///////////////////////////////////////////////////////////////////////////////
}
