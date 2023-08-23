#include "rotate.h"

void rotate(
  const std::vector<unsigned char> & input,
  const int width,
  const int height,
  const int num_channels,
  std::vector<unsigned char> & rotated)
{
    rotated.resize(height * width * num_channels);

    ////////////////////////////////////////////////////////////////////////////

    auto input_pixel_base = 0;
    auto rotate_pixel_base = 0;

    for(auto row = 0; row < height; row++){
        for(auto col = 0; col < width; col++){
            // calculate base index
            input_pixel_base = (row * width + col) * num_channels; // (col, row) (width, height)
            rotate_pixel_base = ((width - col - 1) * height + row) * num_channels; // (row, width-col-1) (height, width)

            // copy all channels
            for(auto chn = 0; chn < num_channels; chn++){
                rotated[rotate_pixel_base + chn] = input[input_pixel_base + chn];
            }
        }
    }

    ///////////////////////////////////////////////////////////////////////////////
}
