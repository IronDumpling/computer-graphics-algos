#include "reflect.h"
#include <iostream>

void reflect(
  const std::vector<unsigned char> & input,
  const int width,
  const int height,
  const int num_channels,
  std::vector<unsigned char> & reflected)
{
    reflected.resize(width * height * num_channels);
    ////////////////////////////////////////////////////////////////////////////
    auto input_pixel_base = 0, reflect_pixel_base = 0;

    for(auto row = 0; row < height; row++){
        for(auto col = 0; col < width; col++){

            input_pixel_base = (row * width + col) * num_channels; // (col, row)
            reflect_pixel_base = (row * width + (width - col - 1)) * num_channels; // (width - col - 1, row)

            for(auto chn = 0; chn < num_channels; chn++){
                reflected[reflect_pixel_base + chn] = input[input_pixel_base + chn];
            }
        }
    }

    ////////////////////////////////////////////////////////////////////////////
}
