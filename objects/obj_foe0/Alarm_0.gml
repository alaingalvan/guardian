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

//Element 1
elementone = global.beast_stats[foe_id, 1];
//Element 2
elementtwo = global.beast_stats[foe_id, 2];
//Health
hp = ceil(global.beast_stats[foe_id, 4] * (lv / 100)) + hp_add;
//Maximum Health
hpmax = ceil(global.beast_stats[foe_id, 4] * (lv / 100)) + hp_add;
//Energy
ep = ceil(global.beast_stats[foe_id, 5] * (lv / 100)) + ep_add;
//Maximum Energy
epmax = ceil(global.beast_stats[foe_id, 5] * (lv / 100)) + ep_add;

///////////////////////////////////////////////////////////////////////////////

//Power Multiplier
pwr_mlti = 1;
//Power
pwr = pwr_mlti * ceil(global.beast_stats[foe_id, 6] * (lv / 100)) + pwr_add;
//Defence Multiplier
def_mlti = 1;
//Defence
def = def_mlti * ceil(global.beast_stats[foe_id, 7] * (lv / 100)) + def_add;
//Speed Multiplier
spd_mlti = 1;
//Speed
spd =
  global.beast_party[21] * ceil(global.beast_stats[foe_id, 8] * (lv / 100)) +
  spd_add;
//Health Regen Multiplier
hrg_mlti = 1;
//Health Regen
hrg = hrg_mlti * ceil(global.beast_stats[foe_id, 6] * (lv / 100)) + hrg_add;
//Energy Regen Multiplier
erg_mlti = 1;
//Energy Regen
erg = erg_mlti * ceil(global.beast_stats[foe_id, 6] * (lv / 100)) + erg_add;

///////////////////////////////////////////////////////////////////////////////
//Status
stat_afflict = "None";
//Experience
experience = ceil(hp + ep + pwr + def + spd + hrg + erg);
