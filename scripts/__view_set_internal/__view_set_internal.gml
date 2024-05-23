function __view_set_internal(__prop, __index, __val) {
      var __cam = view_get_camera(__index);
  switch (__prop) {
    case e__VW.XView:
      camera_set_view_pos(__cam, __val, camera_get_view_y(__cam));
      break;
    case e__VW.YView:
      camera_set_view_pos(__cam, camera_get_view_x(__cam), __val);
      break;
    case e__VW.WView:
      camera_set_view_size(__cam, __val, camera_get_view_height(__cam));
      break;
    case e__VW.HView:
      camera_set_view_size(__cam, camera_get_view_width(__cam), __val);
      break;
    case e__VW.Angle:
      camera_set_view_angle(__cam, __val);
      break;
    case e__VW.HBorder:
      camera_set_view_border(__cam, __val, camera_get_view_border_y(__cam));
      break;
    case e__VW.VBorder:
      camera_set_view_border(__cam, camera_get_view_border_x(__cam), __val);
      break;
    case e__VW.HSpeed:
      camera_set_view_speed(__cam, __val, camera_get_view_speed_y(__cam));
      break;
    case e__VW.VSpeed:
      camera_set_view_speed(__cam, camera_get_view_speed_x(__cam), __val);
      break;
    case e__VW.Object:
      camera_set_view_target(__cam, __val);
      break;
    case e__VW.Visible:
      __res = view_set_visible(__index, __val);
      break;
    case e__VW.XPort:
      __res = view_set_xport(__index, __val);
      break;
    case e__VW.YPort:
      __res = view_set_yport(__index, __val);
      break;
    case e__VW.WPort:
      __res = view_set_wport(__index, __val);
      break;
    case e__VW.HPort:
      __res = view_set_hport(__index, __val);
      break;
    case e__VW.Camera:
      __res = view_set_camera(__index, __val);
      break;
    default:
      break;
  }

  return 0;
}
