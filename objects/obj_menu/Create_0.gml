global.menuon = false;
depth = -10000;
//Menu Selection Vars
//main menu.
menu_max = 3; //Var that determines the size of the menu.
menustop = false;
cur_select = 0; //Current Selection of the menu you're in.
cur_menu = 0; //Var that controls if you are in the main menu, bag, or anything else.
al = 0; //Alpha of Menu
deactivate = false;

tal = 0; //Transition alpha var.
gotomenu = 0; //The menu that you wish to go to.
gotoon = false; //If you are going to another menu.

dooncescreen = false;

trecheck = 0; //var needed for proper menu movement.
lvalpha = 0;
lvup = false;
///////////////////////////////////////////////////////////////////////////////
statline = 0;
statlinemax = 6;
stat_info[0, 0] = "Add HP";
stat_info[0, 1] = "Hp controls how many attacks you can take.";

stat_info[1, 0] = "Add EP";
stat_info[1, 1] = "Ep controls how many attacks you can shoot.";

stat_info[2, 0] = "Add PWR";
stat_info[2, 1] = "Power controls how powerful your attacks are.";

stat_info[3, 0] = "Add DEF";
stat_info[3, 1] = "Defence controls how well you can resist attacks.";

stat_info[4, 0] = "Add SPD";
stat_info[4, 1] = "Speed controls how quickly you can attack.";

stat_info[5, 0] = "Add HRG";
stat_info[5, 1] = "Health Regen controls how quickly you can recover health.";

stat_info[6, 0] = "Add ERG";
stat_info[6, 1] = "Energy Regen controls how quickly you can recover energy.";
///////////////////////////////////////////////////////////////////////////////

timerhp = ceil(10 * (global.beast_party[8] / global.beast_party[26]) + 3);
reghp = ceil(global.beast_party[26] / 100 + 1);
timerep = ceil(10 * (global.beast_party[11] / global.beast_party[29]) + 3);
regep = ceil(global.beast_party[29] / 100 + 1);

ifhit = false;
///////////////////////////////////////////////////////////////////////////////
