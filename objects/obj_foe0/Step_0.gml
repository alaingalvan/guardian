if (ini && !global.cutscene) {
  if (hp <= 0) {
    instance_destroy();
    global.beast_party[12] += experience;
    var a;
    a = instance_create(x, y, obj_experience_display);
    a.txt = experience;
  }
  ///////////////////////////////////////////////////////////////////////////////
  //Goal Behavior
  ///////////////////////////////////////////////////////////////////////////////

  ///////////////////////////////////////////////////////////////////////////////
  //0 - PASSIVE
  ///////////////////////////////////////////////////////////////////////////////
  if (goal == 0) {
    //If you are passive.
    if (attacked == false && move == true) {
      //If you weren't attacked.
      npc_walk(obj_block, 16, 16);
    }

    if (attacked == true) {
      //If you were attacked.
      if (doonce == false) {
        //Initializes Path.
        doonce = true;
        grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);
        path = path_duplicate(pth_enemy);
      }

      if (
        point_distance(obj_player.x, obj_player.y, x, y) > atktimermax &&
        attacking == false
      ) {
        path_end();
        mp_grid_add_instances(grid, obj_block, true);
        //mp_grid_path(grid,path,x,y,target.x+(lengthdir_x(48,angle_inverse(lastdir))),target.y+(lengthdir_y(48,angle_inverse(lastdir))),false)
        mp_grid_path(grid, path, x, y, target.x, target.y, false);
        path_start(path, 3, 0, true);
        lastdir = angle_4dir(lastdir);
        atktimer -= 1;
      }

      if (
        beast_foe_sight(obj_player, 240, lastdir, 16) &&
        attacking == false &&
        atktimer <= 0
      ) {
        var t, c;
        curatk = skill[0];
        mindistance = global.skill_info[1, 7];
        t = global.skill_info[curatk, 6];
        c = global.skill_info[curatk, 5];
        lastdir = angle_4dir(point_direction(x, y, obj_player.x, obj_player.y));
        attacking = true; //To prevent alarm resets.
        alarm[2] = ceil((t * 45) / spd + 3 + 30 / (inteligence + 1));
      }
    }
  }
  ///////////////////////////////////////////////////////////////////////////////
  //1 - ATTACK
  ///////////////////////////////////////////////////////////////////////////////
  if (goal == 1) {
    //If you are Offensive.
  }
  ///////////////////////////////////////////////////////////////////////////////
  //2 - DEFENCE
  ///////////////////////////////////////////////////////////////////////////////
  if (goal == 2) {
    //If you are defensive.
  }

  ///////////////////////////////////////////////////////////////////////////////
}
