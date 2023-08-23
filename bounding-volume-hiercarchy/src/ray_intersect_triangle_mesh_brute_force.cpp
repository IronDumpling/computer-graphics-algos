#include "ray_intersect_triangle_mesh_brute_force.h"
#include "ray_intersect_triangle.h"
#include <limits>

bool ray_intersect_triangle_mesh_brute_force(
  const Ray & ray,
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  const double min_t,
  const double max_t,
  double & hit_t,
  int & hit_f)
{
  ////////////////////////////////////////////////////////////////////////////

  double curr_hit_t = std::numeric_limits<double>::max(), tmp_t = 0;
  int curr_f = -1;

  Eigen::RowVector3d A, B, C;

  for(int index = 0; index < F.rows(); ++index){
      A = V.row(F(index, 0));
      B = V.row(F(index, 1));
      C = V.row(F(index, 2));

      if(ray_intersect_triangle(ray, A, B, C, min_t, max_t, tmp_t)){
          // update index and t
          if(tmp_t >= min_t && tmp_t < curr_hit_t){
              curr_hit_t = tmp_t;
              curr_f = index;
          }
      }
  }

  // is hit
  if(curr_f > -1){
      hit_t = curr_hit_t;
      hit_f = curr_f;
      return true;
  }

  return false;

  ////////////////////////////////////////////////////////////////////////////
}
