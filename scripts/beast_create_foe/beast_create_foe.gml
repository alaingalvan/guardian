function beast_create_foe(argument0, argument1) {
  //beast_create_foe(x,y,id,lv,age,atk1,atk2,atk3,intel,goal)
  var xx, yy;

  xx = argument0;
  yy = argument1;

  instance_create(xx, yy, obj_foe0);
}
