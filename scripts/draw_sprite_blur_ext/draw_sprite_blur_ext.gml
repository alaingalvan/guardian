function draw_sprite_blur_ext(
  argument0,
  argument1,
  argument2,
  argument3,
  argument4,
  argument5,
  argument6,
  argument7,
  argument8,
  argument9
) {
  //draw_sprite_blur_ext(sprite,subimage,x,y,xscale,yscale,rot,color,alpha,blurradius)
  var blurr, blura;
  blurr = argument9 + 10;
  blura = argument8 / blurr;
  for (ii = 0; ii < argument9; ii += 1) {
    for (i = 0; i < 360; i += 360 / blurr) {
      draw_sprite_ext(
        argument0,
        argument1,
        argument2 + lengthdir_x(ii, i),
        argument3 - lengthdir_y(ii, i),
        argument4,
        argument5,
        argument6,
        argument7,
        blura
      );
    }
  }
}
