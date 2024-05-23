attacking = false;

var tri, i;
for (tri = 0; tri <= global.maxskill; tri += 1)
  if (global.beast_skills[tri, 3] == 4) {
    i = instance_create(
      x + 8,
      y + 8,
      global.skill_info[global.beast_skills[tri, 0], 3]
    );
    i.target = 0; //Target set to foe.
    i.direction = direction; //Set direction.
  }
