if (al < 1 && trans == false) {
  al += 0.05;
}
if (trans == true) {
  al -= 0.05;
}
if (al <= 0) {
  instance_destroy();
}
