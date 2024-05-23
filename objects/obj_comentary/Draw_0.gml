if (global.commentary) {
  draw_sprite(spr_message, 0, x, y);

  if (check) {
    draw_sprite(spr_misc_messages, 1, obj_player.x, obj_player.y - 16);
  }
}
