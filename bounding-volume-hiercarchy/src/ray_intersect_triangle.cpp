#include "ray_intersect_triangle.h"
#include <Eigen/Dense>

bool ray_intersect_triangle(
  const Ray & ray,
  const Eigen::RowVector3d & A,
  const Eigen::RowVector3d & B,
  const Eigen::RowVector3d & C,
  const double min_t,
  const double max_t,
  double & t)
{
  ////////////////////////////////////////////////////////////////////////////

  Eigen::Vector3d t_1 = (A - C).transpose();
  Eigen::Vector3d t_2 = (B - C).transpose();

  Eigen::Matrix3d m;
  m << t_1, t_2, -ray.direction;

  if(m.determinant() == 0)
      return false;
  else{
      Eigen::Vector3d params = m.inverse() * (ray.origin - C.transpose());

      if(params[0] < 0 ||
         params[1] < 0 ||
         params[0] + params[1] > 1 ||
         params[2] < min_t ||
         params[2] > max_t){
          return false;
      }
      else{
          t = params[2];
          return true;
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}



