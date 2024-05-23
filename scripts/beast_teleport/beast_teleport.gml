function beast_teleport(_room, _x, _y) {
  room_goto(_room);
  global.teleportx[0] = obj_player.x;
  global.teleporty[0] = obj_player.y;

  if (view_enabled) {
    // We need the coordinates with respect to the drawing region here.
    global.teleportx[0] -= __view_get(e__VW.XView, 0);
    global.teleporty[0] -= __view_get(e__VW.YView, 0);
  }

  obj_player.x = _x;
  obj_player.y = _y;
}
