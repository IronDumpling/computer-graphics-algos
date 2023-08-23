#include "Plane.h"
#include "Ray.h"

bool Plane::intersect(
  const Ray & ray, const double min_t, double & t, Eigen::Vector3d & n) const
{
  ////////////////////////////////////////////////////////////////////////////
  double denominator = this->normal.dot(ray.direction);
  if(denominator == 0) return false;

  t = this->normal.dot((this->point - ray.origin)) / denominator;

  if(t >= min_t){
      n = this->normal.normalized();
      return true;
  }else{
      return false;
  }

  ////////////////////////////////////////////////////////////////////////////
}

