function beast_teleport(argument0, argument1, argument2) {
  //beast_teleport(room,x,y);
  room_goto(argument0);
  global.teleportx[0] = obj_player.x;
  global.teleporty[0] = obj_player.y;

  if (view_enabled) {
    // We need the coordinates with respect to the drawing region here.
    global.teleportx[0] -= __view_get(e__VW.XView, 0);
    global.teleporty[0] -= __view_get(e__VW.YView, 0);
  }

  obj_player.x = argument1;
  obj_player.y = argument2;

  //global.cutscene=false
}
