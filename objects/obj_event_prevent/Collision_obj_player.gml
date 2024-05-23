var _obj;
_obj = instance_create(x, y, obj_text_window);
with (_obj) {
  //---------------------------Text-------------------------------------\\
  //All strings must be named as str0, str1, str2, str3 ect. in order to work
  str = [
    "Welcome. You can skip this tutorial at any time by pressing triangle or C. Press Cross or Space to continue this dialogue.",

    "You can move by using the arrow keys, try moving around. Please note that there are some areas you can't travel to, like the lake.",

    "Pressing Start or P will open your menu. Here you have access to your items, can edit your skills, save, load, etc.",

    "The item menu has 3 pockets, the Battle, Common, and Key item pockets. Each pocket can be sorted by pressing Cross or Space on the item, and again on the 'Sort' option.",

    "The Stat Menu gives you the option to edit your stats or skills. Each time you level up, 5 Training Points are available fo you to use. You can use them to add to the stat of your choice.",

    "Every 5 levels, you learn a new skill, which you can assign to the Circle, Square, or Triangle buttons (or the Z, X, and C buttons if you are on a computer) in the 'Edit Skills' Menu.",

    "Now that the boring stuff is done with, lets get to actual fighting. There is an enemy by the lake, near a tree, attack using Circle, or Square. Note: for the sake of this tutorial, you can't use triangle now."
  ];
  //Modify these two to customize this engine
  strmaxnumb = 6; //Max number of strings (Like, if str56 were the last string, this would just be 56)
  typespeed = 14; //Typing speed

  strnumb = 0; //Current string number
  currentstr = str[0]; //The current string
  pos = 0; //Position in the string to check for mouth expressions
  alarm[0] = 1;
  //---------------------------Text-------------------------------------\\
}
