function game_ini() {
  font_replace_sprite(fon_main, spr_menu_font, 32, 127, 1);
  font_replace_sprite(fon_damage, spr_damage_font, 48, 57, 1);
  font_replace_sprite(fon_health, spr_health_font, 43, 57, 1);
  font_replace_sprite(fon_energy, spr_energy_font, 43, 57, 1);

  draw_set_font(fon_main);
  draw_set_color(c_white);
  global.beast_id = 1;
  global.beast_name = "Guardian";
  global.cutscene = false;
  global.commentary = false;
  global.cur_event = 0;
  instance_create(0, 0, obj_music_control);

  //Initialize all necisary variables for the game.
  beast_stats_ini(); //Info on all Beasts in game.
  item_stats_ini(); //Info on all items in game.
  skill_info_ini(); //Info on all skills in game.
  menu_bag_ini(); //Sets up bag.
}
