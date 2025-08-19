var _check_z_released = keyboard_check_released(ord("Z"));
if (gamepad_is_supported()) {
  _check_z_released |= gamepad_button_check_released(0, gp_face1);
}

if (global.commentary) {
  //If the player touches this area, he has the option of teleporting.
  if (
    collision_rectangle(
      x - 16,
      y - 16,
      x + 32,
      y + 32,
      obj_player,
      false,
      false
    )
  ) {
    check = true;
  } else {
    check = false;
  }

  ///////////////////////////////////////////////////////////////////////////////
  //If You have the option of teleporting and you choose to, then a script occurs.
  if (
    check &&
    _check_z_released &&
    global.menuon == false &&
    !instance_exists(obj_text_window)
  ) {
    switch (cur_comment) {
      case 0:
        var _obj;
        _obj = instance_create(x, y, obj_text_window);
        with (_obj) {
          str = [
            "Alain: Hello, my name is Alain, the maker of the game 'Guardian'. Thanks for trying out my game, if you enjoyed it, feel free to e-mail me at agcreate@hotmail.com. ",
            "Alain: To begin the game, I wanted the player to feel in solitude, that he is reflecting what is happening to his world. The goal was to have this reflect life outside the game."
          ];

          strmaxnumb = 1;
          typespeed = 14;

          strnumb = 0;
          currentstr = str[0];
          pos = 0;
          alarm[0] = 1;
        }
        break;
      case 1:
        var _obj;
        _obj = instance_create(x, y, obj_text_window);
        with (_obj) {
          str = [
            "Alain: The player had to understand the battle system, item system, skills, etc, so this initial scene is both to get a grasp on what the story is, and to have that knowledge."
          ];

          strmaxnumb = 0;
          typespeed = 14;

          strnumb = 0;
          currentstr = str[0];
          pos = 0;
          alarm[0] = 1;
        }
        break;
      case 2:
        var _obj;
        _obj = instance_create(x, y, obj_text_window);
        with (_obj) {
          str = [
            "Alain: No game is complete without having easter eggs everywhere you look, so I made this game with that in mind. There are hidden bosses, items, and areas to discover all over.",
            "Alain: For example, in this area there is a rare item near a cutscene. Try to find it!"
          ];

          strmaxnumb = 1;
          typespeed = 14;

          strnumb = 0;
          currentstr = str[0];
          pos = 0;
          alarm[0] = 1;
        }
        break;
      case 3:
        var _obj;
        _obj = instance_create(x, y, obj_text_window);
        with (_obj) {
          str = [
            "Alain: Our real world does not have percise locations for the player to go, and though there had to be a progression through the story, I wanted the player to have the choice of where to go. ",
            "Alain: So, there are three choices here, though one is not as obvious as the other two."
          ];

          strmaxnumb = 1;
          typespeed = 14;

          strnumb = 0;
          currentstr = str[0];
          pos = 0;
          alarm[0] = 1;
        }
        break;
      case 4:
        var _obj;
        _obj = instance_create(x, y, obj_text_window);
        with (_obj) {
          str = [
            "Alain: There are some areas in the game where you can't access at first, but can eventually.",
            "Alain: This area is an example of that, where you need to get the Raft key item to go through here."
          ];

          strmaxnumb = 1;
          typespeed = 14;

          strnumb = 0;
          currentstr = str[0];
          pos = 0;
          alarm[0] = 1;
        }
        break;
      case 5:
        var _obj;
        _obj = instance_create(x, y, obj_text_window);
        with (_obj) {
          str = [
            "Alain: The AI in the game is built to be ",
            "Alain: So, there are three choices here, though one is not as obvious as the other two."
          ];

          strmaxnumb = 1;
          typespeed = 14;

          strnumb = 0;
          currentstr = str[0];
          pos = 0;
          alarm[0] = 1;
        }
        break;
    }
  }
}
