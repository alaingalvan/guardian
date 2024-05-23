draw_sprite_ext(cur_sprite, image_index, x, y, 1, 1, 0, c_white, image_alpha);

if (global.beast_party[43] == "Burned") {
  draw_sprite(spr_misc_affliction, 0, x + 4, y - 14);
}
if (global.beast_party[43] == "Frozen") {
  draw_sprite(spr_misc_affliction, 1, x + 4, y - 14);
}
if (global.beast_party[43] == "Poisoned") {
  draw_sprite(spr_misc_affliction, 2, x + 4, y - 14);
}
if (global.beast_party[43] == "Paralyzed") {
  draw_sprite(spr_misc_affliction, 3, x + 4, y - 14);
}
if (global.beast_party[43] == "Blinded") {
  draw_sprite(spr_misc_affliction, 4, x + 4, y - 14);
}
if (global.beast_party[43] == "Confused") {
  draw_sprite(spr_misc_affliction, 5, x + 4, y - 14);
}
