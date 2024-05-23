if (ini == true) {
  if (image_alpha > 0.1) {
    image_alpha -= 0.025;
  }
  if (image_alpha <= 0.1) {
    instance_destroy();
  }
}
