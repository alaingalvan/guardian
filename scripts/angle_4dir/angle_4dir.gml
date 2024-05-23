function angle_4dir(_angle) {
  //angle_4dir(angle)
  _angle = floor(_angle);
  if (_angle > 360) {
    _angle -= 360;
  }
  if (_angle < 0) {
    _angle += 360;
  }

  if (_angle >= 315 || _angle <= 45) {
    _angle = 0;
  }
  if (_angle >= 45 && _angle <= 135) {
    _angle = 90;
  }
  if (_angle >= 135 && _angle <= 225) {
    _angle = 180;
  }
  if (_angle >= 225 && _angle <= 315) {
    _angle = 270;
  }
  return _angle;
}
