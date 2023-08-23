#include "hue_shift.h"
#include "hsv_to_rgb.h"
#include "rgb_to_hsv.h"
#include "cmath"
#include <iostream>

void hue_shift(
  const std::vector<unsigned char> & rgb,
  const int width,
  const int height,
  const double shift,
  std::vector<unsigned char> & shifted)
{
  shifted.resize(rgb.size());
  ////////////////////////////////////////////////////////////////////////////

  int pixel_index_base = 0;
  double h, s, v, r, g, b;

  for(int row = 0; row < height; row++){
      for(int col = 0; col < width; col++){
          pixel_index_base = (row * width + col) * 3;

          // rgb to hsv
          h = s = v = 0.0;
          r = rgb[pixel_index_base + 0];
          g = rgb[pixel_index_base + 1];
          b = rgb[pixel_index_base + 2];
          rgb_to_hsv(r, g, b, h, s, v);

          // shift hue
          h -= std::fmod(shift, 360);

          if(h < 0){
              h = 360 - std::abs(h);
          }

          // hsv to rgb
          hsv_to_rgb(h, s, v, r, g, b);

          shifted[pixel_index_base + 0] = r;
          shifted[pixel_index_base + 1] = g;
          shifted[pixel_index_base + 2] = b;
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}
