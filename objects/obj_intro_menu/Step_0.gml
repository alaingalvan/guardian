/// @description ////////////////////////////////////////////////////////////////////////////
//MENU TRANSITIONS
///////////////////////////////////////////////////////////////////////////////
if (menuon) {
  if (al < 1) {
    al += 0.1;
  }
  if (al > 1) {
    al = 1;
  }
} else if (menuon == false) {
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

if (switchon == true) {
  if (sal < 1) {
    sal += 0.1;
  }
  if (sal >= 1) {
    sal = 1;
    switchon = false;
    switchstring();
  }
} else if (switchon == false) {
  if (sal > 0) {
    sal -= 0.1;
  }
  if (sal <= 0) {
    sal = 0;
  }
}
///////////////////////////////////////////////////////////////////////////////
//MENU INITIALIZE
///////////////////////////////////////////////////////////////////////////////
if (menuon == false && !instance_exists(obj_menu_textinput)) {
  if (keyboard_check_pressed(ord("Z"))) {
    menuon = true;
    io_clear();
  }
}
///////////////////////////////////////////////////////////////////////////////
//MENU MOVEMENT
///////////////////////////////////////////////////////////////////////////////
if (
  menuon &&
  gotoon == false &&
  switchon == false &&
  !instance_exists(obj_menu_textinput)
) {
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

  if (cur_menu == 2 && cur_select == 1) {
    if (keyboard_check_pressed(vk_right)) {
      switchon = true;
      switchstring = function () {
        if (global.beast_id < 6) {
          global.beast_id += 1;
        } else if (global.beast_id == 6) {
          global.beast_id = 1;
        }
      };
    }
    if (keyboard_check_pressed(vk_left)) {
      switchon = true;
      switchstring = function () {
        if (global.beast_id > 1) {
          global.beast_id -= 1;
        } else if (global.beast_id == 1) {
          global.beast_id = 6;
        }
      };
    }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //MENU EVENTS
  ///////////////////////////////////////////////////////////////////////////////
  if (
    keyboard_check_pressed(ord("Z")) &&
    gotoon == false &&
    switchon == false &&
    !instance_exists(obj_menu_textinput)
  ) {
    io_clear(); //Automatically clear the keyboard.
    switch (cur_menu) {
      case 0: //Main Menu
        switch (cur_select) {
          case 0:
            if (
              file_exists("guardian_gameinfo.sav") &&
              file_exists("guardian_beastinfo.sav")
            ) {
              var j;
              j = instance_create(0, 0, obj_game_tran0);
              with (j) {
                eventstring = function () {
                  beast_party_ini();
                  beast_skills_ini();
                  beast_load();
                };
              }
              gotoon = true;
            }
            break;
          case 1:
            gotomenu = 2;
            gotoon = true;
            break;
          case 2:
            gotomenu = 3;
            gotoon = true;
            break;
        }
        break;

      case 1: //Load
        //
        break;

      case 2: //New
        switch (cur_select) {
          case 0:
            instance_create(0, 0, obj_menu_textinput);
            break;
          case 1:
            break;
          case 2:
            beast_party_ini();
            beast_skills_ini();
            var j;
            j = instance_create(0, 0, obj_game_tran0);
            with (j) {
              eventstring = function () {
                room_goto(tutorialroom);
              };
            }
            gotoon = true; //Begin by going to Ch.1 - Solitude's Requium.
            break;
        }
        break;

      case 3: //Options
        switch (cur_select) {
          case 0:
            //cur_menu=1; cur_select=0;
            break;
          case 1:
            if (global.commentary == false) {
              global.commentary = true;
            } else if (global.commentary) {
              global.commentary = false;
            }
            break;
          case 2:
            //gotomenu=3; gotoon=true
            break;
        }
        break;
    }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //MENU EXITS
  ///////////////////////////////////////////////////////////////////////////////
  if (
    keyboard_check_pressed(ord("X")) &&
    gotoon == false &&
    switchon == false &&
    !instance_exists(obj_menu_textinput)
  ) {
    io_clear(); //Automatically clear the keyboard.
    switch (cur_menu) {
      case 0: //Main Menu
        menuon = false;
        break;

      case 1: //Load
      case 2: //New
      case 3: //Options
        gotomenu = 0;
        gotoon = true;
        break;
    }
  }
}
if (global.commentary) {
  com = "On";
}
if (!global.commentary) {
  com = "Off";
}
