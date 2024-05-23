var a, b, c, d;
a = instance_create(x, y, obj_skill_bladeshot);
b = instance_create(x, y, obj_skill_bladeshot);
c = instance_create(x, y, obj_skill_bladeshot);
d = instance_create(x, y, obj_skill_bladeshot);
a.target = target;
b.target = target;
c.target = target;
d.target = target;

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

instance_destroy();
