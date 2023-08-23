#include "insert_box_into_box.h"
#define DIMENSION 3

void insert_box_into_box(
  const BoundingBox & A,
  BoundingBox & B)
{
  ////////////////////////////////////////////////////////////////////////////

  for(int axis = 0; axis < DIMENSION; axis++){
      B.min_corner[axis] = std::min(A.min_corner[axis], B.min_corner[axis]);
      B.max_corner[axis] = std::max(A.max_corner[axis], B.max_corner[axis]);
  }

  ////////////////////////////////////////////////////////////////////////////
}

