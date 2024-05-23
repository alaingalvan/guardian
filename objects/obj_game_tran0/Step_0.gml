al += 0.05;
if (al >= 1 && !doonce) {
  doonce = true;
  eventstring();
  instance_destroy();
}
