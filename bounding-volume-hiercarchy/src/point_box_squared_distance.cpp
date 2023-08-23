#include "point_box_squared_distance.h"
#define DIMENSION 3

double point_box_squared_distance(
  const Eigen::RowVector3d & query,
  const BoundingBox & box)
{
  ////////////////////////////////////////////////////////////////////////////

  double min_d = 0, d;

  for(int axis = 0; axis < DIMENSION; ++axis){
      // inside box
      if(box.min_corner[axis] <= query[axis] && query[axis] <= box.max_corner[axis]) d = 0;
      // beyond max
      else if(box.max_corner[axis] < query[axis]) d = query[axis] - box.max_corner[axis];
      // below min
      else d = box.min_corner[axis] - query[axis];
      //update minimum distance
      min_d += d * d;
  }

  return min_d;

  ////////////////////////////////////////////////////////////////////////////
}
