function item_use(argument0, argument1) {
  //item_use(pocket,slot)
  var pkt, slt;
  pkt = argument0;
  slt = argument1;

  global.itemstats[global.inventory[pkt, slt], 5]();
  global.inventorystack[pkt, slt] -= 1;
}
