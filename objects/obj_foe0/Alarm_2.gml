if (ini) {
  var _i;
  _i = instance_create(x + 8, y + 8, global.skill_info[curatk, 3]);
  _i.target = 1; //Target set to foe.
  _i.foeid = id;
  _i.foepwr = pwr;
  _i.foedef = def;

  stop = false;
  attacking = false;
  atktimer = atktimermax;
}
