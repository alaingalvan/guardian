/// Menu Step
var _check_left = keyboard_check(vk_left);
var _check_right = keyboard_check(vk_right);
var _check_up = keyboard_check(vk_up);
var _check_down = keyboard_check(vk_down);
var _check_z = keyboard_check(ord("Z"));
var _check_x = keyboard_check(ord("X"));
var _check_a = keyboard_check(ord("A"));
var _check_s = keyboard_check(ord("S"));

var _check_left_pressed = keyboard_check_pressed(vk_left);
var _check_right_pressed = keyboard_check_pressed(vk_right);
var _check_up_pressed = keyboard_check_pressed(vk_up);
var _check_down_pressed = keyboard_check_pressed(vk_down);
var _check_z_pressed = keyboard_check_pressed(ord("Z"));
var _check_x_pressed = keyboard_check_pressed(ord("X"));
var _check_a_pressed = keyboard_check_pressed(ord("A"));
var _check_s_pressed = keyboard_check_pressed(ord("S"));

var _check_left_released = keyboard_check_released(vk_left);
var _check_right_released = keyboard_check_released(vk_right);
var _check_up_released = keyboard_check_released(vk_up);
var _check_down_released = keyboard_check_released(vk_down);
var _check_z_released = keyboard_check_released(ord("Z"));
var _check_x_released = keyboard_check_released(ord("X"));
var _check_a_released = keyboard_check_released(ord("A"));
var _check_s_released = keyboard_check_released(ord("S"));

if (gamepad_is_supported()) {
  _check_left |= gamepad_button_check(0, gp_padl);
  _check_right |= gamepad_button_check(0, gp_padr);
  _check_up |= gamepad_button_check(0, gp_padu);
  _check_down |= gamepad_button_check(0, gp_padd);

  _check_z |= gamepad_button_check(0, gp_face1);
  _check_x |= gamepad_button_check(0, gp_face2);
  _check_a |= gamepad_button_check(0, gp_face3);
  _check_s |= gamepad_button_check(0, gp_face4);

  _check_left_pressed |= gamepad_button_check_pressed(0, gp_padl);
  _check_right_pressed |= gamepad_button_check_pressed(0, gp_padr);
  _check_up_pressed |= gamepad_button_check_pressed(0, gp_padu);
  _check_down_pressed |= gamepad_button_check_pressed(0, gp_padd);

  _check_z_pressed |= gamepad_button_check_pressed(0, gp_face1);
  _check_x_pressed |= gamepad_button_check_pressed(0, gp_face2);
  _check_a_pressed |= gamepad_button_check_pressed(0, gp_face3);
  _check_s_pressed |= gamepad_button_check_pressed(0, gp_face4);

  _check_left_released |= gamepad_button_check_released(0, gp_padl);
  _check_right_released |= gamepad_button_check_released(0, gp_padr);
  _check_up_released |= gamepad_button_check_released(0, gp_padu);
  _check_down_released |= gamepad_button_check_released(0, gp_padd);

  _check_z_released |= gamepad_button_check_released(0, gp_face1);
  _check_x_released |= gamepad_button_check_released(0, gp_face2);
  _check_a_released |= gamepad_button_check_released(0, gp_face3);
  _check_s_released |= gamepad_button_check_released(0, gp_face4);
}

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
var _check_any_pressed = keyboard_check_pressed(vk_anykey);
if (menuon == false && !instance_exists(obj_menu_textinput)) {
  if (_check_any_pressed) {
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
  if (_check_up_pressed) {
    if (cur_select > 0) {
      cur_select -= 1;
    }
  }
  if (_check_down_pressed) {
    if (cur_select < menu_max) {
      cur_select += 1;
    }
  }

  if (cur_menu == 2 && cur_select == 1) {
    if (_check_right_pressed) {
      switchon = true;
      switchstring = function () {
        if (global.beast_id < 6) {
          global.beast_id += 1;
        } else if (global.beast_id == 6) {
          global.beast_id = 1;
        }
      };
    }
    if (_check_left_pressed) {
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
    _check_z_pressed &&
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
    _check_x_pressed &&
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
