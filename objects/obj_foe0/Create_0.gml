/*
///////////////////////////////////////////////////////////////////////////////
//AI VARS
///////////////////////////////////////////////////////////////////////////////
//Intelligence is controlled in levels, with each level allowing something
//Smarter to be executed. The Goal of each beast is different, so there is an
//underlining var for that.
//Distance to the player is determined by the type of attack you are using..
//If it is physical, then attack player directly. If it is long range, keep
//a good distance from player, if it is special like healing or powering up
//keep far from player.
/////////////////////////////////////////////////////////////////////////////// 
//Intel Levels & Meanings
//0 - Randomly attack.
//1 - Assess foe element and attack.
//2 - Take cover.
//3 - Dodge attacks.

//Goal levels & Meanings
//0 - Passive, don't engage unless attacked.
//1 - Attack, fight the player 1 or several on 1.
//2 - Defend, protect where you are, keeping the player away.


///////////////////////////////////////////////////////////////////////////////
//Event Identifier
global.eventnpc[0]=id
//Inteligence
inteligence=0
//Goal
goal=0
//Can Move
move=true
//atk timer
atktimer=30
//atk timer
atktimermax=30

///////////////////////////////////////////////////////////////////////////////
//Beast Vars
///////////////////////////////////////////////////////////////////////////////
//Beast Age
age=0 // 0=Baby, 1=Child 2=Adult.
//ID
foe_id=3
//Level
lv=25
//Health Addition
hp_add=0
//Energy Addition
ep_add=0
//Power addition
pwr_add=0
//Defence addition
def_add=0
//Speed addition
spd_add=0
//Health Regen addition
hrg_add=0
//Energy Regen addition
erg_add=0
//Skill 1
skill[0]=21 //Fire Shot
//Skill 2
skill[1]=0 //None
//Skill 3
skill[2]=0 //None
//lastdir
lastdir=0

/* */
//Initialize.
ini = false;
//Alarm
alarm[0] = 1;
//Alpha
image_alpha = 0;
//Affliction Var
atime = 0;
//Confused Var
confused = false;
//If you are attacked
attacked = false;
//If you are attacking
attacking = false;
//Create Path Once
doonce = false;
//Current Attack
curatk = 0;
//Stop
stop = false;
//Current target
target = obj_player;

//So that the sprite seems more fluid
timer = room_speed / 5;

//Face Down on Default
direction = 270;
lastdir = 270;
image_single = 0;

grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);
path = path_duplicate(pth_enemy);

//Elements
elementone = "";
elementtwo = "";

// Health
hpmax = 100;
hp = 100;
//Energy
epmax = 100;
ep = epmax;
