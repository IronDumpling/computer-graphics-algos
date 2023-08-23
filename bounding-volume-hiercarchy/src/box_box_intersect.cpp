#include "box_box_intersect.h"
#define DIMENSION 3

bool box_box_intersect(
  const BoundingBox & A,
  const BoundingBox & B)
{
  ////////////////////////////////////////////////////////////////////////////

  for(int axis = 0; axis < DIMENSION; axis++){
      if(A.max_corner[axis] < B.min_corner[axis] ||
         A.min_corner[axis] > B.max_corner[axis])
          return false;
  }

  return true;

  ////////////////////////////////////////////////////////////////////////////
}

