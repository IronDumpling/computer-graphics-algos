#include "rgb_to_hsv.h"
#include "cmath"

void rgb_to_hsv(
  const double r,
  const double g,
  const double b,
  double & h,
  double & s,
  double & v)
{
  ////////////////////////////////////////////////////////////////////////////
  // rgb prime
  // reference to https://www.rapidtables.com/convert/color/rgb-to-hsv.html
  double r_prime = r/255;
  double g_prime = g/255;
  double b_prime = b/255;

  // chroma
  double max = std::fmax(r_prime, std::fmax(g_prime, b_prime));
  double min = std::fmin(r_prime, std::fmin(g_prime, b_prime));
  double range = max - min;

  // value
  v = max;

  // saturation
  if(v == 0) s = 0;
  else s = range / max;

  // hue
  if (range == 0) h = 0;
  else if (max == r_prime) h = 60.0 * (std::fmod((g_prime - b_prime) / range, 6));
  else if (max == g_prime) h = 60.0 * ((b_prime - r_prime) / range + 2.0);
  else if (max == b_prime) h = 60.0 * ((r_prime - g_prime) / range + 4.0);

  ////////////////////////////////////////////////////////////////////////////
}
