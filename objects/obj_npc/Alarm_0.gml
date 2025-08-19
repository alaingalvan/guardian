//Initialize
ini = true;
//Image_alpha
image_alpha = 1;
//The Sprite Direction Assignments
sprleft = asset_get_index(
  "spr_" + global.beast_stats[foe_id, 0] + "_left" + string(age)
);
sprup = asset_get_index(
  "spr_" + global.beast_stats[foe_id, 0] + "_up" + string(age)
);
sprright = asset_get_index(
  "spr_" + global.beast_stats[foe_id, 0] + "_right" + string(age)
);
sprdown = asset_get_index(
  "spr_" + global.beast_stats[foe_id, 0] + "_down" + string(age)
);
cur_sprite = sprdown;
