var a, b;
for (a = 0; a < 2; a += 1)
  for (b = 0; b <= 10; b += 1)
    if (global.inventorystack[a, b] == 0) global.inventory[a, b] = 0;
