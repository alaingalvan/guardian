io_clear();
menuon = true;
al = 0; //Alpha Var
cur_select = 0; //The selection Var.

cur_itemtype =
  global.itemstats[
    global.inventory[
      global.inventoryline[0],
      global.inventoryline[1] + obj_menu.cur_select - obj_menu.trecheck
    ],
    4
  ];

if (cur_itemtype == 0) {
  menu_max = 3;
}
if (cur_itemtype == 1) {
  menu_max = 2;
}
instore = false;

if (instore == true) {
  menu_max = 2;
}
