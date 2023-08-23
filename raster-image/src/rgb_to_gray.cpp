#include "rgb_to_gray.h"

void rgb_to_gray(
  const std::vector<unsigned char> & rgb,
  const int width,
  const int height,
  std::vector<unsigned char> & gray)
{
  gray.resize(height*width);
  ////////////////////////////////////////////////////////////////////////////
  auto r_weight = 0.2126, g_weight = 0.7152, b_weight = 0.0722;

  for(auto i = 0; i < width * height * 3; i += 3){
      gray[i/3] = (unsigned char)(rgb[i] * r_weight +
                                  rgb[i+1] * g_weight +
                                  rgb[i+2] * b_weight);
  }

  ////////////////////////////////////////////////////////////////////////////
}


