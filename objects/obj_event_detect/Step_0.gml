if (!instance_exists(obj_foe0)) {
  if (doonce == false) {
    doonce = true;
    global.cutscene = true;
    var _j;
    _j = instance_create(0, 0, obj_game_tran0);
    with (_j) {
      eventstring = function () {
        instance_destroy();
        var i, k;
        i = instance_create(0, 0, obj_game_tran1);
        with (i) {
          eventstring = function () {
            instance_destroy();
          };
        }
        k = instance_create(0, 0, obj_game_cutscene);
        with (k) {
          cur_event = 5;
        }
      };
    }
    with (obj_event_detect) {
      instance_destroy();
    }
  }
}
