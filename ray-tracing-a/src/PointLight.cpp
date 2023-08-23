#include "PointLight.h"

void PointLight::direction(
  const Eigen::Vector3d & q, Eigen::Vector3d & d, double & max_t) const
{
  ////////////////////////////////////////////////////////////////////////////

  Eigen::Vector3d direction = this->p - q;
  max_t = direction.norm();
  d = direction.normalized();

  // normalize - Normalizes a vector known at compile time in place, returns nothing.
  // normalized - Returns the above as a constructed copy, doesn't affect the class. Can be used to assign (Vector normCopy = vec.normalized()).
  // norm - Returns the norm value, the square root of the sum of the square of all the matrix entries, of the matrix.

  ////////////////////////////////////////////////////////////////////////////
}
