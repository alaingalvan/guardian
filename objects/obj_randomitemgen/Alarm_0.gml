var j;
j = instance_create(
  x + random(64) - random(64),
  y + random(64) - random(64),
  obj_inventory_obj
);
with (j) {
  image_index = round(random(33)) + 1;
}
exit;
