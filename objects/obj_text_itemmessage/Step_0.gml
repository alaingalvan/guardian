if (al < 1 && trans == false) {
  al += 0.1;
}
if (trans == true) {
  al -= 0.1;
}
if (al <= 0) {
  instance_destroy();
}
if (instance_exists(obj_text_lvmessage) || instance_exists(obj_text_window)) {
  trans = true;
}
