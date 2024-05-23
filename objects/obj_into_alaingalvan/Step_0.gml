switch (trans) {
  case 1:
    if (alphatwo < 1) {
      alphatwo += 0.01;
    }
    break;
  case 2:
    if (alphaone > 0) {
      alphaone -= 0.01;
    }
    if (alphatwo > 0) {
      alphatwo -= 0.01;
    }
    if (alphathree < 1) {
      alphathree += 0.01;
    }
    break;
  case 3:
    if (alphathree < 1) {
      alphathree += 0.01;
    }
    break;
}
mov += 2;
if (alphathree >= 1) {
  room_goto_next();
}
