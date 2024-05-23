al += 0.05;
if (al >= 1) {
  instance_destroy();
}
if (target == 0) {
  beast_attack_foe();
}
if (target == 1) {
  beast_attack_player();
}
