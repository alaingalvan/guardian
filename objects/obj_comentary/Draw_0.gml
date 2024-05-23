if (global.commentary) {
  draw_sprite_ext(spr_message, 0, x, y, 1, 1, 0, c_white, image_alpha);

  if (check) {
    draw_sprite_ext(
      spr_misc_messages,
      1,
      obj_player.x,
      obj_player.y - 16,
      1,
      1,
      0,
      c_white,
      image_alpha
    );
  }
}
