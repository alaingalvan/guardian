depth = -((y + sprite_height)) / 16;
image_speed = 0;
image_index = 0;
instance_create(x + 16, y + 32, obj_block);
instance_create(x + 16, y + 48, obj_block);
instance_create(x + 32, y + 32, obj_block);
instance_create(x + 32, y + 48, obj_block);
