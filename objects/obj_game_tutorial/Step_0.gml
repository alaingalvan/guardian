if (dialouge == true) {
  if (doonce == false) {
    doonce = true;

    if (cur_event == 0) {
      //global.cutscene=true
      var _obj;
      _obj = instance_create(x, y, obj_text_window);
      with (_obj) {
        //---------------------------Text-------------------------------------\\
        //All strings must be named as str0, str1, str2, str3 etc. in order to work
        str =
          ["Welcome. You can skip this tutorial at any time by pressing C. Press Z to continue this dialogue.",

          "You can move by using the arrow keys, try moving around. Please note that there are some areas you can't travel to, like the lake.",

          "Pressing Enter will open your menu. Here you have access to your items, can edit your skills, save, load, etc.",

          "The item menu has 3 pockets, the Battle, Common, and Key item pockets. Each pocket can be sorted by pressing Z on the item, and again on the 'Sort' option.",

          "The Stat Menu gives you the option to edit your stats or skills. Each time you level up, 5 Training Points are available for you to use. You can use them to add to the stat of your choice.",

          "Every 5 levels, you learn a new skill, which you can assign to the X, A, and S buttons in the 'Edit Skills' Menu.",

          "Now that the boring stuff is done with, lets get to actual fighting. There is an enemy by the lake, near a tree, attack using X or A. "];
        //Modify these two to customize this engine
        strmaxnumb = 6; //Max number of strings (Like, if str56 were the last string, this would just be 56)
        typespeed = 14; //Typing speed

        strnumb = 0; //Current string number
        currentstr = str[0]; //The current string
        pos = 0; //Position in the string to check for mouth expressions
        alarm[0] = 1;
        //---------------------------Text-------------------------------------\\
      }
    }
    if (cur_event == 3) {
      //global.cutscene=true
      var _obj;
      _obj = instance_create(x, y, obj_text_window);
      with (_obj) {
        //---------------------------Text-------------------------------------\\
        //All strings must be named as str0, str1, str2, str3 ect. in order to work
        str =
          ["Good job, please note the text on the top of the screen. That is the status area, it tells you how much HP, EP, and EXP you have, as well as your level and name.",
          "Be sure to watch how much EP you have. EP, or Energy Points, is controls how many attacks you can deal. Each attack uses some EP. If you are out, using a herb or some medicine will restore EP.",
          "Be sure to be use elements and attacks to your advantage. If you need more help, please refer to the online encyclopidia at www.agcreate.webs.com/guardian/info.html"];
        //Modify these two to customize this engine
        strmaxnumb = 1; //Max number of strings (Like, if str56 were the last string, this would just be 56)
        typespeed = 14; //Typing speed

        strnumb = 0; //Current string number
        currentstr = str[0]; //The current string
        pos = 0; //Position in the string to check for mouth expressions
        alarm[0] = 1;
        //---------------------------Text-------------------------------------\\
      }
    }
  }
  if (cur_event == 1 && !instance_exists(obj_text_window)) {
    cur_event += 1;
  }
}

if (dialouge == false) {
  if (doonce == false) {
    doonce = true;
    var _en;
    _en = instance_create(896, 288, obj_foe0);
    with (_en) {
      //Eventid
      global.eventnpc[1] = id;
      //Inteligence
      inteligence = 0;
      //Goal
      goal = 0;
      //Can Move
      move = false;
      //atk timer
      atktimer = 30;
      //atk timer
      atktimermax = 30;
      //
      attacked = true;
      ///////////////////////////////////////////////////////////////////////////////
      //Beast Vars
      ///////////////////////////////////////////////////////////////////////////////
      //Beast Age
      age = 0; // 0=Baby, 1=Child 2=Adult.
      //ID
      foe_id = 3;
      //Level
      lv = 1;
      //Health Addition
      hp_add = 0;
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
      skill[0] = 21; //Fire Shot
      //Skill 2
      skill[1] = 0; //None
      //Skill 3
      skill[2] = 0; //None
      //lastdir
      lastdir = 90;
    }
  }
  instance_activate_region(0, 0, room_width, room_height, true);
  if (!instance_exists(obj_foe0)) {
    dialouge = true;
    doonce = false;
    if (doonce == false) {
      doonce = true;
      alarm[0] = 30;
    }
  }
}
