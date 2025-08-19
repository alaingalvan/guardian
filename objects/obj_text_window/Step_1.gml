//This checks if it should skip 'till the end of the current string, or jump to the next one, or end game if we reached the last string
var _check_z_released = keyboard_check_released(ord("Z"));
if (gamepad_is_supported()) {
  _check_z_released |= gamepad_button_check_released(0, gp_face1);
}

if (_check_z_released) {
  if (pos < string_length(currentstr)) {
    pos = string_length(currentstr);
  } else {
    if (strnumb < array_length(str) - 1) {
      pos = 0;
      strnumb += 1;
      currentstr = str[clamp(strnumb, 0, array_length(str) - 1)];
    } else {
      io_clear();
      instance_destroy();
      if (instance_exists(obj_game_cutscene)) {
        obj_game_cutscene.alarm[0] = 1;
        obj_game_cutscene.alarm[2] = 1;
      }
      if (instance_exists(obj_game_tutorial)) {
        obj_game_tutorial.alarm[0] = 10;
      }
    }
  }
}
