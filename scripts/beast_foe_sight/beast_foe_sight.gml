function beast_foe_sight(argument0, argument1, argument2, argument3) {
  //beast_foe_sight(obj,dis,dir,limit)
  //by SoulRed12
  //
  //Returns 1 (true) if the particular object can "see" the second object
  //or 0 (false) if it cannot.
  //
  //Argument list:
  //argument0: object you're "looking for"
  //argument1: max distance
  //argument2: current direction
  //argument3: angle discrepancy limit
  //--------------------------------------------------------------------

  //First we got to make sure the object even exists.  This will prevent errors.
  if (instance_exists(argument0)) {
    ch_dist = point_distance(x, y, argument0.x, argument0.y); //Distance to object
    ch_dir = point_direction(x, y, argument0.x, argument0.y); //Direction to object

    usedir = argument2; //The object's current direction
    //We must keep the object's current direction between 0 and 359
    //Notice we used mod
    if (usedir < 0) usedir = 360 - abs(usedir);
    if (usedir >= 360) usedir = usedir % 360;

    //Set up two boolean tests
    //If we're close enough...
    test1 = ch_dist <= argument1;

    //If we're looking in the right direction
    test2 =
      abs(ch_dir - usedir) <= argument3 ||
      abs(usedir - -(360 - ch_dir)) <= argument3 ||
      abs(ch_dir + 360 - usedir) <= argument3;

    //Check if the distance to the object is closer than max distance
    //and that the difference between the bad guy's current angle
    //and the angle to the object in question is within a certain limit
    if (test1 && test2)
      return 1; //Seen!
    else return 0; //Not seen!

    //We have just tested a part of a circle for seeing the specified object.
    //Imagine you cut a round pie, and you look at the piece you cut.
    //That's the shape we used.
  } else return 0; //If the object didn't exist, we couldn't have seen it. Return false
}
