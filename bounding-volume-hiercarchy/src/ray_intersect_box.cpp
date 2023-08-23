#include "ray_intersect_box.h"
#include <iostream>
#include <vector>
#define DIMENSION 3

bool ray_intersect_box(
  const Ray & ray,
  const BoundingBox& box,
  const double min_t,
  const double max_t)
{
  ////////////////////////////////////////////////////////////////////////////

  double box_min, box_max;
  double enter_t = -std::numeric_limits<double>::infinity(), exit_t = std::numeric_limits<double>::infinity();

  for(int axis = 0; axis < DIMENSION; axis++){
      // no intersection
      if(ray.direction[axis] == 0){
          if(ray.origin[axis] < box.min_corner[axis] || ray.origin[axis] > box.max_corner[axis])
              return false;
      }
      // has intersection
      else{
          if(ray.direction[axis] > 0){
              box_min = box.min_corner[axis];
              box_max = box.max_corner[axis];
          }
          else{
              box_min = box.max_corner[axis];
              box_max = box.min_corner[axis];
          }

          // update interval range
          enter_t = std::fmax(enter_t, (box_min - ray.origin[axis]) / ray.direction[axis]);
          exit_t = std::fmin(exit_t, (box_max - ray.origin[axis]) / ray.direction[axis]);
      }
  }

  return exit_t > min_t && enter_t < max_t && enter_t < exit_t;

  ////////////////////////////////////////////////////////////////////////////
}
