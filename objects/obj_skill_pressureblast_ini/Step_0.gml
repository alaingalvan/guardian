timer -= 1;
if (timer <= 0) {
  var a;
  a = instance_create(x, y, obj_skill_pressureblast);
  a.target = target;
  a.col = make_color_hsv(130, 125 - finisher, 200 + finisher);
  if (variable_local_exists("foepwr")) {
    a.foepwr = foepwr;
    a.foedef = foedef;
    a.foeid = foeid;
  }
  timer = 1;
  finisher += 1;
}
if (finisher == 24) {
  instance_destroy();
}
