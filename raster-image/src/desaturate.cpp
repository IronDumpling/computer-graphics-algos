#include "desaturate.h"
#include "hsv_to_rgb.h"
#include "rgb_to_hsv.h"
#include "cmath"
#include <iostream>

void desaturate(
  const std::vector<unsigned char> & rgb,
  const int width,
  const int height,
  const double factor,
  std::vector<unsigned char> & desaturated)
{
  desaturated.resize(rgb.size());
  ////////////////////////////////////////////////////////////////////////////

  // precondition
  assert(factor <= 1 && factor >=0 && "Factor value should be in range of 0 ~ 1");


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

          // desaturated
          s *= (1 - factor);

          // hsv to rgb
          hsv_to_rgb(h, s, v, r, g, b);

          desaturated[pixel_index_base + 0] = r;
          desaturated[pixel_index_base + 1] = g;
          desaturated[pixel_index_base + 2] = b;
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}
