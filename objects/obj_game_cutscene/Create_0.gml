//This object conrols all cutscenes in the game.
//It takes control of the player, making him move or attack according
//to what is necissary for the scene. Each event is determined by
//the var "cur_event".
//Alarm 0 fades in and fades out and destroys this object.

//if cur_event=0 - Opening scene.

timerone = 0;
event_on = false;
doonce = false;
al = 0.5;
obj_menu.menustop = false;
with (obj_skill_parent) {
  instance_destroy();
}

action_set_alarm(1, 1);
