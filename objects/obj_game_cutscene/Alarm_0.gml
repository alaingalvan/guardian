var _j;
_j = instance_create(0, 0, obj_game_tran0);
with (_j) {
  eventstring = function() {
    instance_destroy();
    var _aa;
    _aa = instance_create(0, 0, obj_game_tran1);
    with (_aa) {
      eventstring = function() {
        instance_destroy();
        global.cutscene = false;
      };
    }
    with (obj_game_cutscene) {
      instance_destroy();
    }
    global.cur_event += 1;
    beast_save();
  };
}
