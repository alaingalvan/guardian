event_inherited();
image_speed = 0.5;
motion_set(obj_player.direction, 8);
//The following Vars must be in all attacks.
atkpwr = global.skill_info[41, 4];
element = global.skill_info[41, 1];

action_sound(sou_sfx_sky0, 0);
