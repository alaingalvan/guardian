if (doonce == false) {
  doonce = true;
  switch (cur_event) {
    case 0:
      alarmstring = function() {
        obj_player.lastdir = 90;
      };
      global.cutscene = true;
      var _obj;
      _obj = instance_create(x, y, obj_text_window);
      with (_obj) {
        //---------------------------Text-------------------------------------\\
        //All strings must be named as str0, str1, str2, str3 ect. in order to work
        str = [
          "...",
          global.beast_name +
            ": The world seems to be breaking apart, no longer are there individuals who think for themselves. Rather, I fear that I'm the only one. Is this it? I'm I alone in the dark?",
          global.beast_name +
            ": Well, I guess I'll just have to get away from it all, before this place goes up in flames."
        ];

        //Modify these two to customize this engine
        strmaxnumb = 2; //Max number of strings (Like, if str56 were the last string, this would just be 56)
        typespeed = 14; //Typing speed

        strnumb = 0; //Current string number
        currentstr = str[0]; //The current string
        pos = 0; //Position in the string to check for mouth expressions
        alarm[0] = 1;
        //---------------------------Text-------------------------------------\\
      }
      break;
    case 1:
      global.cutscene = true;
      alarmstring = function() {
        global.eventnpc[0].lastdir = 270;
        global.eventnpc[0].attacked = true;
        global.eventnpc[1].lastdir = 270;
        global.eventnpc[1].attacked = true;
        global.eventnpc[2].lastdir = 270;
        global.eventnpc[2].attacked = true;
      };

      alarm[2] = 150;
      var _obj;
      _obj = instance_create(x, y, obj_text_window);
      with (_obj) {
        //---------------------------Text-------------------------------------\\
        //All strings must be named as str0, str1, str2, str3 ect. in order to work
        str = [
          "Beast: Friend, listen, the world is going to end, we're nearing it friend, can't you see it? Join us friend, and-",
        global.beast_name + ": No thank you!",
        "Beast: Well, we'll force you then!"];

        //Modify these two to customize this engine
        strmaxnumb = 2; //Max number of strings (Like, if str56 were the last string, this would just be 56)
        typespeed = 14; //Typing speed

        strnumb = 0; //Current string number
        currentstr = str[0]; //The current string
        pos = 0; //Position in the string to check for mouth expressions
        alarm[0] = 1;
        //---------------------------Text-------------------------------------\\
      }
      break;
    case 2:
      global.cutscene = true;
      alarmstring = function() {
        obj_player.lastdir = 0;
        global.eventnpc[0].attacked = true;
      };

      var _obj;
      _obj = instance_create(x, y, obj_text_window);
      with (_obj) {
        //---------------------------Text-------------------------------------\\
        //All strings must be named as str0, str1, str2, str3 ect. in order to work
        str = [
          "Beast: Hey boy, come closer, let me have a look at you. You look mighty fresh boy, Come on in, let me have a look at ya.",
        global.beast_name + ": Are you serious? No, boy!",
          "Beast: You seem mighty protective, let's just see what you have on ya."];

        //Modify these two to customize this engine
        strmaxnumb = 2; //Max number of strings (Like, if str56 were the last string, this would just be 56)
        typespeed = 14; //Typing speed

        strnumb = 0; //Current string number
        currentstr = str[0]; //The current string
        pos = 0; //Position in the string to check for mouth expressions
        alarm[0] = 1;
        //---------------------------Text-------------------------------------\\
      }
      break;
    case 3:
      global.cutscene = true;
      alarmstring = function() {
        obj_player.lastdir = 0;
      };

      var _obj;
      _obj = instance_create(x, y, obj_text_window);
      with (_obj) {
        //---------------------------Text-------------------------------------\\
        //All strings must be named as str0, str1, str2, str3 ect. in order to work
        str =[
          global.beast_name + ": Weird, doesn't look like there's anyone here.",
          global.beast_name +
          ": The world wasn't always like this. Just a few years ago there was a government, a society, peace...",
          global.beast_name +
          ": What happened? When did everything fall apart? I guess I'll just keep on surviving."];
        //Modify these two to customize this engine
        strmaxnumb = 2; //Max number of strings (Like, if str56 were the last string, this would just be 56)
        typespeed = 14; //Typing speed

        strnumb = 0; //Current string number
        currentstr = str[0]; //The current string
        pos = 0; //Position in the string to check for mouth expressions
        alarm[0] = 1;
        //---------------------------Text-------------------------------------\\
      }
      break;
    case 4:
      global.cutscene = true;
      alarmstring = function() {
        global.eventnpc[0].lastdir = 0;
        global.eventnpc[0].attacked = true;
        global.eventnpc[1].lastdir = 0;
        global.eventnpc[1].attacked = true;
      };

      alarm[2] = 150;
      var _obj;
      _obj = instance_create(x, y, obj_text_window);
      with (_obj) {
        //---------------------------Text-------------------------------------\\
        //All strings must be named as str0, str1, str2, str3 ect. in order to work
        str = [
          global.beast_name + ": Hey! What are you doing with those beasts?",
          "Cobalt: Taking them to live a life in chains, looks like you want to come along too, ey Chrimson? ",
          "Chrimson: A young beast like him would do wonders in the desert. Come here you!",
          global.beast_name +
          ": Great, now I have bandits on my tail, but I got to save those beasts! "];

        //Modify these two to customize this engine
        strmaxnumb = 3; //Max number of strings (Like, if str56 were the last string, this would just be 56)
        typespeed = 14; //Typing speed

        strnumb = 0; //Current string number
        currentstr = str[0]; //The current string
        pos = 0; //Position in the string to check for mouth expressions
        alarm[0] = 1;
        //---------------------------Text-------------------------------------\\
      }
      break;
    case 5:
      global.cutscene = true;
      alarmstring = function() {
        var _j;
        _j = instance_create(0, 0, obj_game_tran0);
        with (_j) {
          eventstring = function() {
            game_restart();
          };
        }
      };
      obj_player.x = 272;
      obj_player.y = 832;
      var _obj;
      _obj = instance_create(x, y, obj_text_window);
      with (_obj) {
        //---------------------------Text-------------------------------------\\
        //All strings must be named as str0, str1, str2, str3 ect. in order to work
        str = [global.beast_name + ": Hey, you guys alright? ",
          "Beast: Yeah, those bandits just came and took everything, and wanted to keep us as slaves.",
          "Beast: I'm sure that I speak for everyone here when I say; we want to give you our hospitality. Let's get our stuff and go to the town center. ",
          global.beast_name + ": Ok. "];

        //Modify these two to customize this engine
        strmaxnumb = 3; //Max number of strings (Like, if str56 were the last string, this would just be 56)
        typespeed = 14; //Typing speed

        strnumb = 0; //Current string number
        currentstr = str[0]; //The current string
        pos = 0; //Position in the string to check for mouth expressions
        alarm[0] = 1;
        //---------------------------Text-------------------------------------\\
      }
      break;
  }
}
