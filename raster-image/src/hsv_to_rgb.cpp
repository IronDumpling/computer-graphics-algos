#include "hsv_to_rgb.h"
#include "cmath"

void hsv_to_rgb(
  const double h,
  const double s,
  const double v,
  double & r,
  double & g,
  double & b)
{
  ////////////////////////////////////////////////////////////////////////////

  // reference to https://www.rapidtables.com/convert/color/hsv-to-rgb.html
  double range = v * s;
  double min = v - range;
  double x = range * (1 - std::abs(std::fmod(h / 60.0, 2) - 1));
  
  // rgb prime
  double r_prime = 0, g_prime = 0, b_prime = 0;

  if(0 <= h && h < 60){
      r_prime = range;
      g_prime = x;
      b_prime = 0;
  }
  else if(60 <= h && h < 120){
      r_prime = x;
      g_prime = range;
      b_prime = 0;
  }
  else if(60 <= h && h < 120){
      r_prime = 0;
      g_prime = range;
      b_prime = x;
  }
  else if(120 <= h && h < 180){
      r_prime = 0;
      g_prime = range;
      b_prime = x;
  }
  else if(180 <= h && h < 240){
      r_prime = 0;
      g_prime = x;
      b_prime = range;
  }
  else if(240 <= h && h < 300){
      r_prime = x;
      g_prime = 0;
      b_prime = range;
  }
  else if(300 <= h && h < 360){
      r_prime = range;
      g_prime = 0;
      b_prime = x;
  }
  
  r = (r_prime + min) * 255;
  g = (g_prime + min) * 255;
  b = (b_prime + min) * 255;

  ////////////////////////////////////////////////////////////////////////////
}
