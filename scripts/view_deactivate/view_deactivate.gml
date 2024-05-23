function view_deactivate() {
  if (view_enabled == true && global.menuon == false) {
    //declares objects which you want to be deactivated here

    instance_deactivate_object(obj_prop_tree);
    instance_deactivate_object(obj_block);
    instance_deactivate_object(obj_foe_parrent);
    instance_deactivate_object(obj_inventory_obj);
    instance_deactivate_object(obj_event_trigger);
    instance_deactivate_object(obj_event_detect);
    instance_deactivate_object(obj_comentary);
    instance_deactivate_object(obj_teleport);
    //reactivates all instances
    instance_activate_region(
      __view_get(e__VW.XView, 0) - __view_get(e__VW.WView, 0) / 2,
      __view_get(e__VW.YView, 0) - __view_get(e__VW.WView, 0) / 2,
      __view_get(e__VW.WView, 0) + __view_get(e__VW.WView, 0) / 2,
      __view_get(e__VW.HView, 0) + __view_get(e__VW.WView, 0) / 2,
      true
    );
  }
}
