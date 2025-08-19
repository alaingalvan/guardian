var _check_z_released = keyboard_check_released(ord("Z"));
if (gamepad_is_supported()) {
  _check_z_released |= gamepad_button_check_released(0, gp_face1);
}

if (ini) {
  // Maintain constant timer for dialog windows.
  var _dt = delta_time / 1000000;
  time_since_last_text_window = clamp(time_since_last_text_window + _dt, 0, 10);

  if (global.cutscene == false) {
    if (move == true) {
      npc_walk(obj_block, 16, 16);
    }

    var _in_region_y = collision_rectangle(
      x - 15,
      y,
      x + 31,
      y + 15,
      obj_player,
      false,
      false
    );
    var _in_region_x = collision_rectangle(
      x,
      y - 15,
      x + 15,
      y + 31,
      obj_player,
      false,
      false
    );

    var _in_region = _in_region_y || _in_region_x;

    if (_in_region) {
      check = true;
    } else {
      check = false;
    }

    if (
      _in_region &&
      _check_z_released &&
      !instance_exists(obj_text_window) &&
      time_since_last_text_window > 0.5
    ) {
      action = true;
      lastdir = angle_4dir(point_direction(x, y, obj_player.x, obj_player.y));
      obj_player.lastdir = angle_4dir(
        point_direction(obj_player.x, obj_player.y, x, y)
      );
      io_clear();

      switch (cur_npc) {
        case 0:
          ///////////////////////////////////////////////////////////////////////////////
          //Solrec Cave Boss.
          obj = instance_create(x, y, obj_text_window);
          with (obj) {
            str = [
              "Grant: Hello. I must commend you on coming this far. I'm Grant, and I'm here awaiting a challenger.",
              global.beast_name +
                ": So I suppose I'm that challenger. Alright, lets go."
            ];
            global.cutscene = true;

            strmaxnumb = 1;
            typespeed = 14;

            strnumb = 0;
            currentstr = str[0];
            pos = 0;
            alarm[0] = 1;
          }

          ///////////////////////////////////////////////////////////////////////////////
          break;
        case 1:
          ///////////////////////////////////////////////////////////////////////////////
          obj = instance_create(x, y, obj_text_window);
          with (obj) {
            str = [
              "Hey, thanks for taking care of that guy, some people are just crazy.",
              "I left something behind the house, you can take it if you want."
            ];
            global.cutscene = true;

            strmaxnumb = 1;
            typespeed = 14;

            strnumb = 0;
            currentstr = str[0];
            pos = 0;
            alarm[0] = 1;
          }
          ///////////////////////////////////////////////////////////////////////////////
          break;
      }
    }
  }

  if (action == true) {
    switch (cur_npc) {
      ///////////////////////////////////////////////////////////////////////////////
      case 0:
        if (doonce == false) {
          doonce = true;
          var _ch;
          _ch = instance_create(x, y, obj_foe0);
          //lastdir
          _ch.lastdir = lastdir;
          with (_ch) {
            //Inteligence
            inteligence = 0;
            //Goal
            goal = 0;
            //Can Move
            move = false;
            //atk timer
            atktimer = 5;
            //atk timer
            atktimermax = 5;
            ///////////////////////////////////////////////////////////////////////////////
            //Beast Vars
            ///////////////////////////////////////////////////////////////////////////////
            //Beast Age
            age = 0; // 0=Baby, 1=Child 2=Adult.
            //ID
            foe_id = 3;
            //Level
            lv = 10;
            //Health Addition
            hp_add = 50;
            //Energy Addition
            ep_add = 0;
            //Power addition
            pwr_add = 0;
            //Defence addition
            def_add = 0;
            //Speed addition
            spd_add = 0;
            //Health Regen addition
            hrg_add = 0;
            //Energy Regen addition
            erg_add = 0;
            //Skill 1
            skill[0] = 26; //Fire Shot
            //Skill 2
            skill[1] = 0; //None
            //Skill 3
            skill[2] = 0; //None

            attacked = true;
          }
        }
        if (!instance_exists(obj_text_window)) {
          instance_destroy();
          global.cutscene = false;
        }

        break;
      ///////////////////////////////////////////////////////////////////////////////
      case 1:
        if (!instance_exists(obj_text_window)) {
          global.cutscene = false;
        }
        break;
    }
  }
}
