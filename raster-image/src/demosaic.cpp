#include "demosaic.h"
#include <iostream>

bool out_of_bound(const int row,
                  const int col,
                  const int & width,
                  const int & height){
    if(col < 0 || col >= width || row < 0 || row >= height) return true;
    else return false;
}

int check_color(const int row, const int col){
    int color;

    // green
    if ((row + col)%2 == 0) color = 1;
    // red
    else if (row%2) color = 0;
    // blue
    else color = 2;

    return color;
}

void demosaic(
  const std::vector<unsigned char> & bayer,
  const int & width,
  const int & height,
  std::vector<unsigned char> & rgb)
{
  rgb.resize(width*height*3);

  ////////////////////////////////////////////////////////////////////////////
  int rgb_pixel_base, bayer_pixel_base, color_offset;
  int r_count, g_count, b_count;
  std::vector<unsigned int> RGB(3);

  for(auto row = 0; row < height; row++){
      for(auto col = 0; col < width; col++){
          // calculate index
          bayer_pixel_base = row * width + col;
          rgb_pixel_base = bayer_pixel_base * 3;

          // calculate color total values
          r_count = 0; g_count = 0; b_count = 0;
          std::fill(RGB.begin(), RGB.end(), 0);

          for(auto i = row - 1; i <= row + 1; i++){
              for(auto j = col - 1; j <= col + 1; j++){
                  if(!out_of_bound(i, j, width, height)){
                      // add all color values together
                      color_offset = check_color(i, j);
                      RGB[color_offset] += bayer[i * width + j];

                      if(color_offset == 0) r_count++;
                      else if (color_offset == 1) g_count++;
                      else b_count++;
                  }
              }
          }

          // pixel itself is green
          if(check_color(row, col) == 1){
              RGB[1] = bayer[bayer_pixel_base];
              g_count = 1;
          }

          // average color values
          rgb[rgb_pixel_base + 0] = RGB[0]/r_count;
          rgb[rgb_pixel_base + 1] = RGB[1]/g_count;
          rgb[rgb_pixel_base + 2] = RGB[2]/b_count;
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}
