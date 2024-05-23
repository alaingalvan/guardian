function fix_view_position(_view_number) {
  // This script fixes the position of the view.
  // argument0 is the view number (usually 0.)
  if (!view_enabled || !instance_exists(__view_get(e__VW.Object, _view_number))) exit;

  // Move the view to keep hborder/vborder around all of four sides of the object.
  __view_set(
    e__VW.XView,
    _view_number,
    max(
      min(
        __view_get(e__VW.XView, _view_number),
        __view_get(e__VW.Object, _view_number).x - __view_get(e__VW.HBorder, _view_number)
      ),
      __view_get(e__VW.Object, _view_number).x +
        __view_get(e__VW.HBorder, _view_number) -
        __view_get(e__VW.WView, _view_number)
    )
  );
  __view_set(
    e__VW.YView,
    _view_number,
    max(
      min(
        __view_get(e__VW.YView, _view_number),
        __view_get(e__VW.Object, _view_number).y - __view_get(e__VW.VBorder, _view_number)
      ),
      __view_get(e__VW.Object, _view_number).y +
        __view_get(e__VW.VBorder, _view_number) -
        __view_get(e__VW.HView, _view_number)
    )
  );
  // Keep it inside the room.
  __view_set(
    e__VW.XView,
    _view_number,
    max(
      0,
      min(room_width - __view_get(e__VW.WView, _view_number), __view_get(e__VW.XView, _view_number))
    )
  );
  __view_set(
    e__VW.YView,
    _view_number,
    max(
      0,
      min(room_height - __view_get(e__VW.HView, _view_number), __view_get(e__VW.YView, _view_number))
    )
  );
}
