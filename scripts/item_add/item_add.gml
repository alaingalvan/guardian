///Adds the item listed to global.inventory[pkt,slt].
function item_add(_item_id) {
  for (var a = 0; a <= global.maxitems[0]; a += 1)
    for (var b = 0; b <= global.maxitems[1]; b += 1)
      for (var c = 0; c <= global.maxitems[2]; c += 1)
        if (global.itemstats[_item_id, 4] == 0) {
          //If the current item is in the battle bag.
          //First check to see if there are any other of the same item.
          if (global.inventory[0, a] == _item_id) {
            global.inventorystack[0, a] += 1;
            var _i;
            _i = instance_create(0, 0, obj_text_itemmessage);
            _i.txt = "You obtained '" + global.itemstats[_item_id, 2] + "'.";
            exit;
          }
          //Then it adds another if that slot is empty.
          else if (a == global.maxitems[0] - 1) {
            for (f = 0; f <= global.maxitems[0]; f += 1)
              if ((global.inventory[0, f] = 0)) {
                global.inventory[0, f] = _item_id;
                global.inventorystack[0, f] += 1;
                var _i;
                _i = instance_create(0, 0, obj_text_itemmessage);
                _i.txt =
                  "You obtained '" + global.itemstats[_item_id, 2] + "'.";

                exit;
              }
              //Otherwise, If all spaces are full, tell the player so.
              else if (f == global.maxitems[0] - 1) instance_destroy();
            var _i;
            _i = instance_create(0, 0, obj_text_itemmessage);
            _i.txt = "Your Bag is full.";
            exit;
          }
        } else if (global.itemstats[_item_id, 4] == 1) {
          //If the current item is in the battle bag.
          //First check to see if there are any other of the same item.
          if (global.inventory[1, b] == _item_id) {
            global.inventorystack[1, b] += 1;
            var _i;
            _i = instance_create(0, 0, obj_text_itemmessage);
            _i.txt = "You obtained '" + global.itemstats[_item_id, 2] + "'.";
            exit;
          } else if (b == global.maxitems[1] - 1) {
            for (g = 0; g <= global.maxitems[1]; g += 1)
              if (global.inventory[1, g] == 0) {
                global.inventory[1, g] = _item_id;
                global.inventorystack[1, g] += 1;
                var _i;
                _i = instance_create(0, 0, obj_text_itemmessage);
                _i.txt =
                  "You obtained '" + global.itemstats[_item_id, 2] + "'.";
                exit;
              } else if (g == global.maxitems[1] - 1)
                //If all spaces are full, tell the player so.
                var _i;
            _i = instance_create(0, 0, obj_text_itemmessage);
            _i.txt = "Your Bag is full.";
            instance_destroy();
            exit;
          }
        }
}
