#include "euler_angles_to_transform.h"

Eigen::Affine3d euler_angles_to_transform(
  const Eigen::Vector3d & xzx)
{
  /////////////////////////////////////////////////////////////////////////////

  Eigen::Affine3d Rx2, Rz1, Rx0;

  Rx2 = Eigen::AngleAxisd(xzx(2) * M_PI/180.0, Eigen::Vector3d::UnitX());
  Rz1 = Eigen::AngleAxisd(xzx(1) * M_PI/180.0, Eigen::Vector3d::UnitZ());
  Rx0 = Eigen::AngleAxisd(xzx(0) * M_PI/180.0, Eigen::Vector3d::UnitX());

  return Rx2 * Rz1 * Rx0;

  /////////////////////////////////////////////////////////////////////////////
}
