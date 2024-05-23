event_inherited();
action_sound(sou_sfx_fire1, 0);
image_speed = 0.5;
image_index = random(3);
//The following Vars must be in all attacks.
atkpwr = global.skill_info[1, 4];
element = global.skill_info[1, 1];

doonce = false;
image_alpha = 0;
