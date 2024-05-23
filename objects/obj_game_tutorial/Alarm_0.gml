doonce = false;
if (cur_event == 0) {
  dialouge = false;
}

//if (dialouge==false)
//{
cur_event += 1;

//}

if (cur_event == 4) {
  global.cutscene = true;
  var _cre;
  _cre = instance_create(0, 0, obj_game_tran0);
  _cre.eventstring = function() {
    instance_destroy();
    global.cutscene = false;
    beast_teleport(solrec0, 800, 624);
    obj_player.lastdir = 180;
    obj_menu.deactivate = true;
  };
}
