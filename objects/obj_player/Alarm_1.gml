attacking = false;

var squ, i;
for (squ = 0; squ <= global.maxskill; squ += 1)
  if (global.beast_skills[squ, 3] == 3) {
    i = instance_create(
      x + 8,
      y + 8,
      global.skill_info[global.beast_skills[squ, 0], 3]
    );
    i.target = 0; //Target set to foe.
    i.direction = direction; //Set direction.
  }
