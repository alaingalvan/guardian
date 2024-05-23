var a, b, c, d;
a = instance_create(x, y, obj_skill_ionicburst);
b = instance_create(x, y, obj_skill_ionicburst);
c = instance_create(x, y, obj_skill_ionicburst);
d = instance_create(x, y, obj_skill_ionicburst);
a.target = target;
b.target = target;
c.target = target;
d.target = target;
if (variable_local_exists("foepwr")) {
  a.foepwr = foepwr;
  b.foepwr = foepwr;
  c.foepwr = foepwr;
  d.foepwr = foepwr;

  a.foedef = foedef;
  b.foedef = foedef;
  c.foedef = foedef;
  d.foedef = foedef;

  a.foeid = foeid;
  b.foeid = foeid;
  c.foeid = foeid;
  d.foeid = foeid;
}
instance_destroy();
