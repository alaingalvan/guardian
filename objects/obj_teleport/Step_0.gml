//If the player touches this area, he has the option of teleporting.
if (
  collision_rectangle(x - 16, y - 16, x + 32, y + 32, obj_player, false, false)
) {
  check = true;
} else {
  check = false;
}

///////////////////////////////////////////////////////////////////////////////
//If You have the option of teleporting and you choose to, then a script occurs.
if (
  check == true &&
  active == false &&
  keyboard_check_released(ord("Z")) &&
  global.menuon == false
) {
  active = true;
  io_clear();
}
///////////////////////////////////////////////////////////////////////////////
if (active == true) {
  if (doonce == false) {
    doonce = true;
    global.cutscene = true;
    var _cre;
    _cre = instance_create(0, 0, obj_game_tran0);
    _cre.eventstring = function() {
      global.cutscene = false;
      beast_teleport(dest_room, dest_x, dest_y);
      }
    };
  }