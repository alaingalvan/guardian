attacking = false;

var _squ, _i;
for (_squ = 0; _squ <= global.maxskill; _squ += 1)
  if (global.beast_skills[_squ, 3] == 3) {
    _i = instance_create(
      x + 8,
      y + 8,
      global.skill_info[global.beast_skills[_squ, 0], 3]
    );
    _i.target = 0; //Target set to foe.
    _i.direction = direction; //Set direction.
  }
