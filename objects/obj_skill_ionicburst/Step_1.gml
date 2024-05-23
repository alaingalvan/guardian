if (!doonce) {
  if (instance_exists(obj_player)) {
    if (target == 0) {
      motion_set(obj_player.direction + random(12) - random(12), 15);
    }
  }

  if (instance_exists(foeid)) {
    if (target == 1) {
      motion_set(angle_4dir(foeid.lastdir) + random(12) - random(12), 15);
    }
  }

  doonce = true;
  image_alpha = 1;
}
