pos += typespeed / room_speed;

if (
  pos > string_length(currentstr) ||
  string_char_at(currentstr, pos) == "," ||
  string_char_at(currentstr, pos) == "." ||
  string_char_at(currentstr, pos) == "!" ||
  string_char_at(currentstr, pos) == "?" ||
  string_char_at(currentstr, pos) == ":" ||
  string_char_at(currentstr, pos) == ";"
) {
  pos += typespeed / room_speed;
  alarm[0] = (room_speed / typespeed) * 3;
} else {
  alarm[0] = 1;
}
