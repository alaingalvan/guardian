pause_deactivate();
if (menustop == false && global.cutscene == false) {
  ///////////////////////////////////////////////////////////////////////////////
  //MENU TRANSITIONS
  ///////////////////////////////////////////////////////////////////////////////
  if (global.menuon == true) {
    if (al < 1) {
      al += 0.1;
    }
    if (al > 1) {
      al = 1;
    }
  } else if (global.menuon == false) {
    if (al > 0) {
      al -= 0.1;
    }
    if (al <= 0) {
      al = 0;
    }
  }

  if (gotoon == true) {
    if (tal < 1) {
      tal += 0.1;
    }
    if (tal >= 1) {
      tal = 1;
      gotoon = false;
      cur_menu = gotomenu;
      cur_select = 0;
    }
  } else if (gotoon == false) {
    if (tal > 0) {
      tal -= 0.1;
    }
    if (tal <= 0) {
      tal = 0;
    }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //MENU INITIALIZE
  ///////////////////////////////////////////////////////////////////////////////
  if (global.menuon == false) {
    if (keyboard_check_pressed(vk_enter)) {
      global.menuon = true;
      io_clear();
    }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //MENU MOVEMENT
  ///////////////////////////////////////////////////////////////////////////////
  if (global.menuon == true) {
    if (keyboard_check_pressed(vk_up)) {
      if (cur_select > 0) {
        cur_select -= 1;
      }
    }
    if (keyboard_check_pressed(vk_down)) {
      if (cur_select < menu_max) {
        cur_select += 1;
      }
    }
    ///////////////////////////////////////////////////////////////////////////////
    //MAIN MENU MOVEMENT
    ///////////////////////////////////////////////////////////////////////////////
    if ((cur_menu = 0 || cur_menu == 2)) {
      menu_max = 3;
      trecheck = 0;
    }
    ///////////////////////////////////////////////////////////////////////////////
    //ITEM MENU MOVEMENT
    ///////////////////////////////////////////////////////////////////////////////
    if (cur_menu == 1) {
      //Item Menu
      //---------------------------------Variables---------------------------------\\
      menu_max = 4;

      //----------------------------Moving Up the bag------------------------------\\
      if (cur_select <= global.maxitems[global.inventoryline[0]] - 3) {
        if (keyboard_check_pressed(vk_up)) {
          if (global.inventoryline[1] > 0 && cur_select == 0) {
            trecheck = 0;
            global.inventoryline[1] -= 1;
          }
        }
      }

      //----------------------------Moving Down the bag----------------------------\\

      if (cur_select == 4) {
        if (keyboard_check_pressed(vk_down)) {
          trecheck = 1;
          if (
            global.inventoryline[1] <
            global.maxitems[global.inventoryline[0]] - 3
          ) {
            global.inventoryline[1] += 1;
          }
        }
      }
      //---------------------------Moving arround pockets---------------------------\\
      if (keyboard_check_pressed(vk_right)) {
        if (global.inventoryline[0] < 2) {
          global.inventoryline[0] += 1;
        }
      }
      if (keyboard_check_pressed(vk_left)) {
        if (global.inventoryline[0] > 0) {
          global.inventoryline[0] -= 1;
        }
      }
    }
    ///////////////////////////////////////////////////////////////////////////////
    //SKILL MENU MOVEMENT
    ///////////////////////////////////////////////////////////////////////////////
    if (cur_menu == 3) {
      //Skill Menu
      //---------------------------------Variables---------------------------------\\
      menu_max = 4;

      //----------------------------Moving Up the bag------------------------------\\
      if (cur_select <= statlinemax - 3) {
        if (keyboard_check_pressed(vk_up)) {
          if (cur_select == 0) {
            trecheck = 0;
            if (statline > 0) {
              statline -= 1;
            }
          }
        }
      }

      //----------------------------Moving Down the bag----------------------------\\

      if (cur_select == 4) {
        if (keyboard_check_pressed(vk_down)) {
          trecheck = 1;
          if (statline < statlinemax - 3) {
            statline += 1;
          }
        }
      }
    }
    ///////////////////////////////////////////////////////////////////////////////
    //SKILL MENU MOVEMENT
    ///////////////////////////////////////////////////////////////////////////////
    if (cur_menu == 4) {
      //Skill Menu
      //---------------------------------Variables---------------------------------\\
      menu_max = 4;

      //----------------------------Moving Up the bag------------------------------\\
      if (cur_select <= global.maxskill - 3) {
        if (keyboard_check_pressed(vk_up)) {
          if (cur_select == 0) {
            trecheck = 0;
            if (global.skillline > 0) {
              global.skillline -= 1;
            }
          }
        }
      }

      //----------------------------Moving Down the bag----------------------------\\

      if (cur_select == 4) {
        if (keyboard_check_pressed(vk_down)) {
          trecheck = 1;
          if (global.skillline < global.maxskill - 3) {
            global.skillline += 1;
          }
        }
      }
    }
    ///////////////////////////////////////////////////////////////////////////////
    //MENU EVENTS
    ///////////////////////////////////////////////////////////////////////////////
    if (keyboard_check_pressed(ord("Z"))) {
      io_clear(); //Automatically clear the keyboard.
      switch (cur_menu) {
        case 0: //Main Menu
          switch (cur_select) {
            case 0:
              gotomenu = 1;
              gotoon = true;
              break;
            case 1:
              gotomenu = 2;
              gotoon = true;
              break;
            case 2: //save
              menustop = true;
              var _in;
              _in = instance_create(0, 0, obj_menu_saveload);
              _in.cur_mode = 0;
              break;
            case 3: //save
              menustop = true;
              var _in;
              _in = instance_create(0, 0, obj_menu_saveload);
              _in.cur_mode = 1;
              break;
          }
          break;
        case 1: //Bag
          if (
            global.itemstats[
              global.inventory[
                global.inventoryline[0],
                global.inventoryline[1] + cur_select - trecheck
              ],
              0
            ] > 0
          ) {
            menustop = true;
            instance_create(0, 0, obj_menu_item);
          }
          break;
        case 2: //Stats Menu
          switch (cur_select) {
            case 1:
              gotomenu = 3;
              gotoon = true;
              break;
            case 2:
              gotomenu = 4;
              gotoon = true;
              break;
            case 3:
              //Insert "cur_menu=5" Here.
              break;
          }
          break;
        case 3: //Stat Edit Menu
          if (
            global.beast_party[31 + (statline + cur_select - trecheck)] <=
            global.beast_party[14]
          ) {
            menustop = true;
            instance_create(0, 0, obj_menu_stat);
          }
          break;
        case 4: //Skills Menu
          if (
            global.beast_skills[global.skillline + cur_select - trecheck, 1] >
            0
          ) {
            menustop = true;
            instance_create(0, 0, obj_menu_skill);
          }
          break;
      }
    }
    ///////////////////////////////////////////////////////////////////////////////
    //MENU EXITS
    ///////////////////////////////////////////////////////////////////////////////
    if (keyboard_check_pressed(ord("X"))) {
      io_clear(); //Automatically clear the keyboard.
      switch (cur_menu) {
        case 0: //Main Menu
          global.menuon = false;
          break;

        case 1: //Bag
        case 2: //Stats
          gotomenu = 0;
          gotoon = true;
          break;
        case 3: //Edit Stats
        case 4: //Edit Skills
          gotomenu = 2;
          gotoon = true;
          break;
      }
    }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //Other Code
  ///////////////////////////////////////////////////////////////////////////////
  beast_party_ctrl();
  if (deactivate == true) {
    view_deactivate();
  }
}
