function draw_text_ext_alpha(_xx, _yy, _str, _sep, _w, _alpha) {
  var _prev_alpha;
  _prev_alpha = draw_get_alpha();
  draw_set_alpha(_alpha);
  draw_text_ext(_xx, _yy, string_hash_to_newline(_str), _sep, _w);
  draw_set_alpha(_prev_alpha);
}
