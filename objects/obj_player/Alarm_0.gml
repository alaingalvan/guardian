attacking = false;

for (var _cir = 0; _cir <= global.maxskill; _cir += 1)
  if (global.beast_skills[_cir, 3] == 2) {
    var _i;
    _i = instance_create(
      x + 8,
      y + 8,
      global.skill_info[global.beast_skills[_cir, 0], 3]
    );
    _i.target = 0; //Target set to foe.
    _i.direction = direction; //Set direction.
  }
