atime = 0; //Status Affliction Timer
blind = false;
confused = false;

attacking = false;
block = obj_block;

//Face Down on Default
direction = 270;
lastdir = 270;

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
sprite_index = cur_sprite;

//So that the sprite seems more fluid
timer = room_speed / 5;
image_single = 0;
image_alpha = 1;
image_angle = 0;

scr_player_image_handle();
