//Creating a software animation loop to save file space.
if (turn == 1) {
  alphaone -= 0.001;
  alphatwo += 0.001;
  if (alphaone <= 0) {
    turn *= -1;
  }
}
if (turn == -1) {
  alphaone += 0.001;
  alphatwo -= 0.001;
  if (alphatwo <= 0) {
    turn *= -1;
  }
}
