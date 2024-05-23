al -= 0.05;
if (al <= 0 && !doonce) {
  doonce = true;
  eventstring();
  instance_destroy();
}
