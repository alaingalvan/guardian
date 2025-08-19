global.cutscene = true;
var _j;
_j = instance_create(0, 0, obj_game_tran0);
with (_j) {
  eventstring = function () {
    instance_destroy();
    var _i, _k;
    _i = instance_create(0, 0, obj_game_tran1);
    with (_i) {
      eventstring = function () {
        instance_destroy();
      };
    }
    _k = instance_create(0, 0, obj_game_cutscene);
    with (_k) {
      cur_event = global.cur_event;
    }
  };
}
with (obj_event_trigger) {
  instance_destroy();
}
