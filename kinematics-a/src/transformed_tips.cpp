#include "transformed_tips.h"
#include "forward_kinematics.h"

Eigen::VectorXd transformed_tips(
  const Skeleton & skeleton, 
  const Eigen::VectorXi & b)
{
  /////////////////////////////////////////////////////////////////////////////

  std::vector<Eigen::Affine3d, Eigen::aligned_allocator<Eigen::Affine3d>> T;
  forward_kinematics(skeleton, T);

  Eigen::VectorXd res = Eigen::VectorXd::Zero(3 * b.size());
  Eigen::Vector4d row = Eigen::Vector4d::Zero();

  for(int idx = 0; idx < b.size(); idx++){
      Bone bone = skeleton[b[idx]];
      row = T[b[idx]] * bone.rest_T * Eigen::Vector4d(bone.length, 0, 0, 1);

      res[3 * idx + 0] = row[0];
      res[3 * idx + 1] = row[1];
      res[3 * idx + 2] = row[2];
  }

  return res;

  /////////////////////////////////////////////////////////////////////////////
}
