event_inherited();
image_speed = 0.5;

doonce = false;
trigger = false;
image_alpha = 1;
beast_party_multi(0);
beast_party_multi(2);
obj_player.attacking = true;

var i, j;
i = instance_create(obj_player.x, obj_player.y, obj_info_display);
j = instance_create(obj_player.x, obj_player.y - 12, obj_info_display);
i.txt = "+PWR";
j.txt = "+SPD";

action_set_alarm(30, 0);
