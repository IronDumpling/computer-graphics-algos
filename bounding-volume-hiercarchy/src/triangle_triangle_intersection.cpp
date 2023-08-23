#include "triangle_triangle_intersection.h"
#include "ray_intersect_triangle.h"
#define MIN_T 0
#define MAX_T 1

bool triangle_triangle_intersection(
  const Eigen::RowVector3d & A0,
  const Eigen::RowVector3d & A1,
  const Eigen::RowVector3d & A2,
  const Eigen::RowVector3d & B0,
  const Eigen::RowVector3d & B1,
  const Eigen::RowVector3d & B2)
{
  ////////////////////////////////////////////////////////////////////////////

  double tmp_t;

  // edges of triangle A
  Ray e1(A0, A1 - A0), e2(A0, A2 - A0), e3(A1, A2 - A1);

  // triangle A's edges intersect triangle B
  if (ray_intersect_triangle(e1, B0, B1, B2, MIN_T, MAX_T, tmp_t) ||
      ray_intersect_triangle(e2, B0, B1, B2, MIN_T, MAX_T, tmp_t) ||
      ray_intersect_triangle(e3, B0, B1, B2, MIN_T, MAX_T, tmp_t))
      return true;

  // edges of triangle B
  e1.origin = B0;
  e1.direction = B1 - B0;
  e2.origin = B0;
  e2.direction = B2 - B0;
  e3.origin = B1;
  e3.direction = B2 - B1;

  // triangle B's edges intersect triangle A
  if (ray_intersect_triangle(e1, A0, A1, A2, MIN_T, MAX_T, tmp_t) ||
      ray_intersect_triangle(e2, A0, A1, A2, MIN_T, MAX_T, tmp_t) ||
      ray_intersect_triangle(e3, A0, A1, A2, MIN_T, MAX_T, tmp_t))
      return true;

  // no triangles' edges intersect the other triangle
  return false;

  ////////////////////////////////////////////////////////////////////////////
}
