function draw_wave_freq(
  argument0,
  argument1,
  argument2,
  argument3,
  argument4,
  argument5
) {
  // draw_wave_freq(x,y,freq,amp,time,speed);
  var xx, yy, wave_freq, wave_amp, wave_time, wave_speed, wave_length;

  xx = argument0;
  yy = argument1;
  wave_freq = argument2;
  wave_amp = argument3 * 2;
  wave_time = argument4;
  wave_speed = argument5;
  wave_length = wave_speed / wave_freq;

  half_x = wave_length / 2;
  half_y = wave_amp / 2;

  ii = wave_length;
  for (var ___i = 0; ___i < (wave_time * wave_speed) / wave_length; ___i++) {
    for (i = 0; i < ii; i += 1) {
      draw_line(
        xx + i,
        yy + (sin((i * (pi * 2)) / wave_length) * half_y + half_y),
        xx + (i + 1),
        yy + (sin(((i + 1) * (pi * 2)) / wave_length) * half_y + half_y)
      );
    }
    ii += wave_length;
  }
}
