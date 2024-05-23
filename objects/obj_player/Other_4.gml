var j;
j = instance_create(0, 0, obj_game_tran1);
with (j) {
  eventstring = function() {
    instance_destroy();
  };
}

global.teleportx[1] = x;
global.teleporty[1] = y;
fix_view_position(0);
