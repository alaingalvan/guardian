if (al < 1 && check == false) {
  al += 0.1;
}

if (check == true) {
  al -= 0.1;
  if (al <= 0) {
    instance_destroy();
  }
}
