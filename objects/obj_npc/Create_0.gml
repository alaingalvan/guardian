/*
//Event Identifier
global.eventnpc[0]=id
//What NPC you are.
cur_npc=0
//If you can move.
move=true
//Beast Age
age=0 // 0=Baby, 1=Child 2=Adult.
//ID
foe_id=3
//lastdir
lastdir=0
//If the Player can move.
playermove=false

/* */
//Initialize.
ini = false;
//Alarm
alarm[0] = 1;
//Alpha
image_alpha = 0;

check = false;

action = false;

doonce = false;
//So that the sprite seems more fluid
timer = room_speed / 5;
image_single = 0;

grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);
path = path_duplicate(pth_enemy);
