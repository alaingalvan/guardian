if (ini == true) {
  draw_set_alpha(1);
  draw_sprite_ext(cur_sprite, image_index, x, y, 1, 1, 0, c_white, image_alpha);

  //HP Bar
  if (hp > 0) {
    draw_set_halign(fa_center);
    draw_text_ext_alpha(
      x + sprite_width / 2,
      y + (sprite_height + 2),
      string(hp) + "/" + string(hpmax),
      12,
      256,
      0.5
    );
    //draw_text_ext_alpha(x+(sprite_width/2),y+(sprite_height+14),string(attacking),12,256,0.5)
    draw_set_halign(fa_left);
  }
}
