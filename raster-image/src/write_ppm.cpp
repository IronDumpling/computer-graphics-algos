#include "write_ppm.h"
#include <fstream>
#include <cassert>
#include <iostream>

bool write_ppm(
  const std::string & filename,
  const std::vector<unsigned char> & data,
  const int width,
  const int height,
  const int num_channels)
{
  assert((num_channels == 3 || num_channels ==1 ) &&
    ".ppm only supports RGB or grayscale images");
  ////////////////////////////////////////////////////////////////////////////

  std::ofstream ppm;
  ppm.open(filename, std::fstream::out);

  if(!ppm.is_open()){
      std::cout << "File: " << filename << " can't be opened." << std::endl;
      return false;
  }else{
      std::cout << "File: " << filename << " is opened." << std::endl;
  }

  // Write header of ppm file
  // Get reference from https://web.cse.ohio-state.edu/~shen.94/681/Site/ppm_help.html
  ppm << ((num_channels == 1) ? "P2" : "P3") << std::endl // Magic number for identifying a ppm file
      << width << " " << height << std::endl // Width and height of the image
      << "255" << std::endl; // Value range for each component

  // Write image data
  auto len = width * height * num_channels;
  for (auto i = 0; i < len; i++){
      ppm << (unsigned int) data[i] << " ";
  }

  ppm.close();
  return true;

  ////////////////////////////////////////////////////////////////////////////
}
