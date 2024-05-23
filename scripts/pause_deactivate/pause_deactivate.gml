function pause_deactivate() {
  if (al == 1) {
    //declares objects which you want to be deactivated here
    instance_deactivate_all(true);
    instance_activate_object(obj_menu_item);
    instance_activate_object(obj_menu_saveload);
    instance_activate_object(obj_menu_stat);
    instance_activate_object(obj_menu_skill);

    instance_activate_object(obj_player);
    instance_activate_object(obj_health_display);
    instance_activate_object(obj_experience_display);
    instance_activate_object(obj_energy_display);
    instance_activate_object(obj_info_display);
  }

  if (al < 1) {
    instance_activate_region(
      __view_get(e__VW.XView, 0) - __view_get(e__VW.WView, 0) / 2,
      __view_get(e__VW.YView, 0) - __view_get(e__VW.WView, 0) / 2,
      __view_get(e__VW.WView, 0) + __view_get(e__VW.WView, 0) / 2,
      __view_get(e__VW.HView, 0) + __view_get(e__VW.WView, 0) / 2,
      true
    );
  }
}
