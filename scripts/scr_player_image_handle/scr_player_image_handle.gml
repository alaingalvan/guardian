function scr_player_image_handle() {
  //Player Image Handle
  //Written by DFortun81
  /*This script was designed to handle the image indexes in Peacekeeper*/
  var _cycle;

  //Determine if the NPC has moved
  if (x != xprevious || y != yprevious) {
    depth = -y;
    _cycle = 1;
    lastdir = point_direction(xprevious, yprevious, x, y);
  } else {
    _cycle = 0;
    image_single = 0;
  }

  //Change the Sprite when the last direction is different
  if (lastdir >= 315 || lastdir <= 45) {
    cur_sprite = sprright;
  }
  if (lastdir >= 45 && lastdir <= 135) {
    cur_sprite = sprup;
  }
  if (lastdir >= 135 && lastdir <= 225) {
    cur_sprite = sprleft;
  }
  if (lastdir >= 225 && lastdir <= 315) {
    cur_sprite = sprdown;
  }

  //Change the Image Index every image_number scaled by the room_speed
  timer -= 1;
  if (timer <= 0) {
    if (_cycle) {
      image_single += 1;
      timer = room_speed / 5;
    }
  }
}
