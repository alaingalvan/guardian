if (image_alpha > 0.1) {
  image_alpha -= 0.05;
}
if (image_alpha <= 0.1) {
  instance_destroy();
}
