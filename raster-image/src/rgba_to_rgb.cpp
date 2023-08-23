#include "rgba_to_rgb.h"

void rgba_to_rgb(
  const std::vector<unsigned char> & rgba,
  const int & width,
  const int & height,
  std::vector<unsigned char> & rgb)
{
    //rgb.resize(height*width*3);

    for (auto i = 0; i < rgba.size(); i++){
        // skip all alpha channels
        if (i % 4 != 3){
            rgb.emplace_back(rgba[i]);
        }
    }
}
