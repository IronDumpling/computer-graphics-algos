#include "viewing_ray.h"

void viewing_ray(
  const Camera & camera,
  const int i, // 10 row
  const int j, // 20 col
  const int width, // 640
  const int height, // 360
  Ray & ray)
{
  ////////////////////////////////////////////////////////////////////////////

  // origin
  ray.origin = camera.e;

  // direction vector elements
  double u_j = camera.width / width * (j + 0.5) - camera.width / 2; // j -> u
  double v_i = camera.height / height * (- i - 0.5) + camera.height / 2; // i -> v
                                                                        // i & v directions are opposite

  // direction vector
  ray.direction = camera.u * u_j + camera.v * v_i - camera.w * camera.d;

  ////////////////////////////////////////////////////////////////////////////
}

