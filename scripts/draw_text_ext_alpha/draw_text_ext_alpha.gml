function draw_text_ext_alpha(
  argument0,
  argument1,
  argument2,
  argument3,
  argument4,
  argument5
) {
  //draw_text_ext_alpha(x,y,string,sep,w,alpha)

  var xx, yy, str, sep, w, alpha;
  xx = real(argument0);
  yy = real(argument1);
  str = string(argument2);
  sep = real(argument3);
  w = real(argument4);
  alpha = argument5;

  draw_set_alpha(alpha);
  draw_text_ext(xx, yy, string_hash_to_newline(str), sep, w);
  draw_set_alpha(alpha);
}
