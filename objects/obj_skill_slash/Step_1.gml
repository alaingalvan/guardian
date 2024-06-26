if (doonce == false) {
  if (instance_exists(obj_player)) {
    if (target == 0) {
      motion_set(obj_player.direction, 4);
      with (obj_player) {
        motion_set(obj_player.direction, 4);
      }
    }
  }

  if (instance_exists(foeid)) {
    if (target == 1) {
      motion_set(angle_4dir(foeid.lastdir), 4);
      with (foeid) {
        motion_set(angle_4dir(foeid.lastdir), 4);
      }
    }
  }

  doonce = true;
  image_alpha = 1;
  if (direction > 90 && direction < 320) {
    image_xscale = -1;
    dir = direction - 180;
  } else {
    image_xscale = 1;
    dir = direction;
  }
}
