function beast_load() {
  //beast_load();
  //This script is to have an organized execution of the save code.
  //It saves 2 files in the same directory as the exe.

  //Due to the fact that this is for a competition, and they might
  //not have support for this, this can easily be replaced with the
  //function 'game_save'.
  //This is just to have a small sized save as there are many things
  //which remain persistent, and there will be future updates,
  //of which I want easy transitions from one update to the next.

  //Save file 1 - game Info.
  //Vars stored here:
  //room
  //x
  //y
  //global.cur_event
  var __gameinfo, _beastinfo, _xx, _yy;
  if (
    file_exists("guardian_gameinfo.sav") &&
    file_exists("guardian_beastinfo.sav")
  ) {
    _gameinfo = adfile_open_read("guardian_gameinfo.sav");
    if (room_persistent) {
      room_restart();
    }
    room_goto(adfile_read_real(_gameinfo));
    //room_goto(solrec0)
    if (!instance_exists(obj_player)) {
      instance_create(0, 0, obj_player);
    }
    obj_player.x = adfile_read_real(_gameinfo); //X
    obj_player.y = adfile_read_real(_gameinfo); //Y

    global.cur_event = adfile_read_real(_gameinfo); //X
    adfile_close(_gameinfo);
    //Save file 2 - Beast Info
    //gobal.beast_id
    //global.beast_name
    //beast_age
    //lv
    //hp and ep
    //stat additions
    //status affliction

    _beastinfo = adfile_open_read("guardian_beastinfo.sav");
    global.beast_id = adfile_read_real(_beastinfo); //ID
    global.beast_name = adfile_read_string(_beastinfo); //Name
    global.beast_age = adfile_read_real(_beastinfo); //Age
    global.beast_party[5] = adfile_read_real(_beastinfo); //Level
    global.beast_party[6] = adfile_read_real(_beastinfo); //HP add
    global.beast_party[9] = adfile_read_real(_beastinfo); //EP add
    global.beast_party[7] = adfile_read_real(_beastinfo); //HP
    global.beast_party[10] = adfile_read_real(_beastinfo); //EP
    global.beast_party[12] = adfile_read_real(_beastinfo); //EXP
    global.beast_party[14] = adfile_read_real(_beastinfo); //TP
    global.beast_party[16] = adfile_read_real(_beastinfo); //PWR add
    global.beast_party[19] = adfile_read_real(_beastinfo); //DEF add
    global.beast_party[22] = adfile_read_real(_beastinfo); //SPD add
    global.beast_party[25] = adfile_read_real(_beastinfo); //HRG add
    global.beast_party[28] = adfile_read_real(_beastinfo); //ERG add
    global.beast_party[43] = adfile_read_string(_beastinfo); //Status
    global.maxskill = 9; //Status
    beast_skills_ini();
    beast_party_load();
    for (a = 0; a <= 9; a += 1) {
      global.beast_skills[a, 3] = adfile_read_real(_beastinfo); //Skill Button
    }
    var b, c;
    for (b = 0; b < 2; b += 1)
      for (c = 0; c <= 10; c += 1) {
        global.inventory[b, c] = adfile_read_real(_beastinfo); //Item Inventory
        global.inventorystack[b, c] = adfile_read_real(_beastinfo); //Item Inventorystack
      }
    adfile_close(_beastinfo);

    if (!instance_exists(obj_menu)) {
      var _i;
      _i = instance_create(0, 0, obj_menu);
      with (_i) {
        global.menuon = false;
        //Menu Selection Vars
        //main menu.
        menu_max = 3; //Var that determines the size of the menu.
        menustop = false;
        cur_select = 0; //Current Selection of the menu you're in.
        cur_menu = 0; //Var that controls if you are in the main menu, bag, or anything else.
        al = 0; //Alpha of Menu
        deactivate = false;

        tal = 0; //Transition alpha var.
        gotomenu = 0; //The menu that you wish to go to.
        gotoon = false; //If you are going to another menu.

        trecheck = 0; //var needed for proper menu movement.
        lvalpha = 0;
        lvup = false;
        ///////////////////////////////////////////////////////////////////////////////
        statline = 0;
        statlinemax = 6;
        stat_info[0, 0] = "Add HP";
        stat_info[0, 1] = "Hp controls how many attacks you can take.";

        stat_info[1, 0] = "Add EP";
        stat_info[1, 1] = "Ep controls how many attacks you can shoot.";

        stat_info[2, 0] = "Add PWR";
        stat_info[2, 1] = "Power controls how powerful your attacks are.";

        stat_info[3, 0] = "Add DEF";
        stat_info[3, 1] = "Defence controls how well you can resist attacks.";

        stat_info[4, 0] = "Add SPD";
        stat_info[4, 1] = "Speed controls how quickly you can attack.";

        stat_info[5, 0] = "Add HRG";
        stat_info[5, 1] =
          "Health Regen controls how quickly you can recover health.";

        stat_info[6, 0] = "Add ERG";
        stat_info[6, 1] =
          "Energy Regen controls how quickly you can recover energy.";
        ///////////////////////////////////////////////////////////////////////////////
        timerhp = ceil(
          10 * (global.beast_party[8] / global.beast_party[26]) + 3
        );
        reghp = ceil(global.beast_party[26] / 100 + 1);
        timerep = ceil(
          10 * (global.beast_party[11] / global.beast_party[29]) + 3
        );
        regep = ceil(global.beast_party[29] / 100 + 1);
        ifhit = false;
        ///////////////////////////////////////////////////////////////////////////////
      }
    }
    with (obj_player) {
      atime = 0; //Status Affliction Timer
      blind = false;
      confused = false;

      attacking = false;
      block = obj_block;

      direction = 270;
      lastdir = 270; //Face Down on Default
      attacking = false;
      path = -1;

      sprleft = asset_get_index(
        "spr_" +
          global.beast_stats[global.beast_id, 0] +
          "_left" +
          string(global.beast_age)
      );
      sprup = asset_get_index(
        "spr_" +
          global.beast_stats[global.beast_id, 0] +
          "_up" +
          string(global.beast_age)
      );
      sprright = asset_get_index(
        "spr_" +
          global.beast_stats[global.beast_id, 0] +
          "_right" +
          string(global.beast_age)
      );
      sprdown = asset_get_index(
        "spr_" +
          global.beast_stats[global.beast_id, 0] +
          "_down" +
          string(global.beast_age)
      );

      cur_sprite = sprdown;
      //So that the sprite seems more fluid
      timer = room_speed / 5;
    }

    exit;
  } else {
    game_restart();
  }
}
