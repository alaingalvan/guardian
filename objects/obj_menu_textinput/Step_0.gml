if (menuon) {
  if (al < 1) {
    al += 0.1;
  }
  if (al > 1) {
    al = 1;
  }
} else if (!menuon) {
  if (al > 0) {
    al -= 0.1;
    if (al <= 0) {
      instance_destroy();
    }
  }
}

if (keyboard_check_pressed(vk_right)) {
  if (inputtext[0] < inputtext[1]) {
    inputtext[0] += 1;
  } else if (inputtext[0] == inputtext[1]) {
    inputtext[0] = 0;
  }
}

if (keyboard_check_pressed(vk_left)) {
  if (inputtext[0] > 0) {
    inputtext[0] -= 1;
  } else if (inputtext[0] == 0) {
    inputtext[0] = inputtext[1];
  }
}

if (keyboard_check_pressed(vk_down)) {
  if (inputtext[2] < inputtext[3]) {
    inputtext[2] += 1;
  } else if (inputtext[2] == inputtext[3]) {
    inputtext[2] = 0;
  }
}

if (keyboard_check_pressed(vk_up)) {
  if (inputtext[2] > 0) {
    inputtext[2] -= 1;
  } else if (inputtext[2] == 0) {
    inputtext[2] = inputtext[3];
  }
}

if (keyboard_check_pressed(ord("Z")) && string_length(inputstring) < 10) {
  switch (inputtext[2]) {
    case 0:
      switch (inputtext[0]) {
        case 0:
          inputstring += "A";
          break;
        case 1:
          inputstring += "B";
          break;
        case 2:
          inputstring += "C";
          break;
        case 3:
          inputstring += "D";
          break;
        case 4:
          inputstring += "E";
          break;
        case 5:
          inputstring += "F";
          break;
        case 6:
          inputstring += "G";
          break;
        case 7:
          inputstring += "H";
          break;
        case 8:
          inputstring += "I";
          break;
        case 9:
          inputstring += "J";
          break;
        case 10:
          inputstring += "K";
          break;
        case 11:
          inputstring += "L";
          break;
        case 12:
          inputstring += "M";
          break;
      }
      break;
    case 1:
      switch (inputtext[0]) {
        case 0:
          inputstring += "N";
          break;
        case 1:
          inputstring += "O";
          break;
        case 2:
          inputstring += "P";
          break;
        case 3:
          inputstring += "Q";
          break;
        case 4:
          inputstring += "R";
          break;
        case 5:
          inputstring += "S";
          break;
        case 6:
          inputstring += "T";
          break;
        case 7:
          inputstring += "U";
          break;
        case 8:
          inputstring += "V";
          break;
        case 9:
          inputstring += "W";
          break;
        case 10:
          inputstring += "X";
          break;
        case 11:
          inputstring += "Y";
          break;
        case 12:
          inputstring += "Z";
          break;
      }
      break;
    case 2:
      switch (inputtext[0]) {
        case 0:
          inputstring += "a";
          break;
        case 1:
          inputstring += "b";
          break;
        case 2:
          inputstring += "c";
          break;
        case 3:
          inputstring += "d";
          break;
        case 4:
          inputstring += "e";
          break;
        case 5:
          inputstring += "f";
          break;
        case 6:
          inputstring += "g";
          break;
        case 7:
          inputstring += "h";
          break;
        case 8:
          inputstring += "i";
          break;
        case 9:
          inputstring += "j";
          break;
        case 10:
          inputstring += "k";
          break;
        case 11:
          inputstring += "l";
          break;
        case 12:
          inputstring += "m";
          break;
      }
      break;
    case 3:
      switch (inputtext[0]) {
        case 0:
          inputstring += "n";
          break;
        case 1:
          inputstring += "o";
          break;
        case 2:
          inputstring += "p";
          break;
        case 3:
          inputstring += "q";
          break;
        case 4:
          inputstring += "r";
          break;
        case 5:
          inputstring += "s";
          break;
        case 6:
          inputstring += "t";
          break;
        case 7:
          inputstring += "u";
          break;
        case 8:
          inputstring += "v";
          break;
        case 9:
          inputstring += "w";
          break;
        case 10:
          inputstring += "x";
          break;
        case 11:
          inputstring += "y";
          break;
        case 12:
          inputstring += "z";
          break;
      }
      break;
  }
  exit;
}
//if keyboard_check_pressed(ord('X')) && stg_length>=1
//{inputstring+=" " stg_length+=1}
if (keyboard_check_pressed(ord("X")) && string_length(inputstring) > 0) {
  inputstring = string_delete(inputstring, string_length(inputstring), 1);
}
//if keyboard_check_pressed(ord('X')) && string_length(inputstring)=1
//{inputstring = ""}
if (keyboard_check_pressed(vk_enter) && string_length(inputstring) > 0) {
  menuon = false;
  global.beast_name = inputstring;
}
