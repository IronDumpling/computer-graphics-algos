#include "simulate_bayer_mosaic.h"

void simulate_bayer_mosaic(
  const std::vector<unsigned char> & rgb,
  const int & width,
  const int & height,
  std::vector<unsigned char> & bayer)
{
  bayer.resize(width*height);
  ////////////////////////////////////////////////////////////////////////////
  auto input_pixel_base = 0, bayer_pixel_base = 0;
  const auto red = 0, green = 1, blue = 2;

  for(auto row = 0; row < height; row++){
      // odd rows: R + G
      if(row % 2){
          for(auto col = 0; col < width; col++){
              input_pixel_base = (row * width + col) * 3;
              bayer_pixel_base = row * width + col;

              // odd fetch G (1, 1)
              if(col % 2){
                  bayer[bayer_pixel_base] = rgb[input_pixel_base + green];
              }
              // even fetch R (0, 1)
              else{
                  bayer[bayer_pixel_base] = rgb[input_pixel_base + red];
              }
          }
      }
      // even rows: G + B
      else{
          for(auto col = 0; col < width; col++){
              input_pixel_base = (row * width + col) * 3;
              bayer_pixel_base = row * width + col;

              // odd fetch B (1, 0)
              if(col % 2){
                  bayer[bayer_pixel_base] = rgb[input_pixel_base + blue];
              }
              // even fetch G (0, 0)
              else{
                  bayer[bayer_pixel_base] = rgb[input_pixel_base + green];
              }
          }
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}
