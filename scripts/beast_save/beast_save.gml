function beast_save() {
  //beast_save();
  //This scipt is to have an orgainzed exicution of the save code.
  //It saves 2 files in the same directory as the exe.

  //Due to the fact that this is for a competition, and they might
  //not have support for this, this can easily be replaced with the
  //fuction 'game_save'.
  //This is just to have a small sized save as there are many things
  //which remain persistaint, and there will be future updates,
  //of which I want easy transitions from one update to the next.

  //Save file 1 - game Info.
  //Vars stored here:
  //room
  //x
  //y
  //global.cur_event
  var gameinfo, beastinfo;

  gameinfo = adfile_open_write("guardian_gameinfo.sav");
  adfile_write_real(gameinfo, real(room)); //Room
  adfile_write_real(gameinfo, obj_player.x); //X
  adfile_write_real(gameinfo, obj_player.y); //Y
  adfile_write_real(gameinfo, global.cur_event); //X
  adfile_close(gameinfo);
  //Save file 2 - Beast Info
  //gobal.beast_id
  //global.beast_name
  //beast_age
  //lv
  //stat additions
  //status affliction

  beastinfo = adfile_open_write("guardian_beastinfo.sav");
  adfile_write_real(beastinfo, global.beast_id); //ID
  adfile_write_string(beastinfo, global.beast_name); //Name
  adfile_write_real(beastinfo, global.beast_age); //Age
  adfile_write_real(beastinfo, global.beast_party[5]); //Level
  adfile_write_real(beastinfo, global.beast_party[6]); //HP add
  adfile_write_real(beastinfo, global.beast_party[9]); //EP add
  adfile_write_real(beastinfo, global.beast_party[7]); //HP
  adfile_write_real(beastinfo, global.beast_party[10]); //EP
  adfile_write_real(beastinfo, global.beast_party[12]); //EXP
  adfile_write_real(beastinfo, global.beast_party[14]); //TP
  adfile_write_real(beastinfo, global.beast_party[16]); //PWR add
  adfile_write_real(beastinfo, global.beast_party[19]); //DEF add
  adfile_write_real(beastinfo, global.beast_party[22]); //SPD add
  adfile_write_real(beastinfo, global.beast_party[25]); //HRG add
  adfile_write_real(beastinfo, global.beast_party[28]); //ERG add
  adfile_write_string(beastinfo, global.beast_party[43]); //Status
  for (a = 0; a <= 9; a += 1) {
    adfile_write_real(beastinfo, global.beast_skills[a, 3]); //Skill Button
  }
  var b, c;
  for (b = 0; b < 2; b += 1)
    for (c = 0; c <= 10; c += 1) {
      adfile_write_real(beastinfo, global.inventory[b, c]); //Item Inventory
      adfile_write_real(beastinfo, global.inventorystack[b, c]); //Item Inventorystack
    }
  adfile_close(beastinfo);
  exit;
}
