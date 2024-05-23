if (!doonce) {
  doonce = true;
  image_alpha = 1;
  if (instance_exists(obj_player)) {
    if (target == 0) {
      x += lengthdir_x(32, obj_player.direction);
      y += lengthdir_y(32, obj_player.direction);
    }
  }

  if (instance_exists(foeid)) {
    if (target == 1) {
      x += lengthdir_x(32, angle_4dir(foeid.lastdir));
      y += lengthdir_y(32, angle_4dir(foeid.lastdir));
    }
  }
}
