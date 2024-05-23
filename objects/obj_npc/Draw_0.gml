if (ini == true) {
  draw_set_alpha(1);
  draw_sprite_ext(cur_sprite, image_index, x, y, 1, 1, 0, c_white, image_alpha);
  if (check == true && !instance_exists(obj_text_window)) {
    draw_sprite(spr_misc_messages, 1, obj_player.x, obj_player.y - 16);
  }
}
