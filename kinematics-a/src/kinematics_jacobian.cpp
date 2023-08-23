#include "kinematics_jacobian.h"
#include "transformed_tips.h"
#define DIM 3
#define h 1e-7

void kinematics_jacobian(
  const Skeleton & skeleton,
  const Eigen::VectorXi & b,
  Eigen::MatrixXd & J)
{
  /////////////////////////////////////////////////////////////////////////////

  J = Eigen::MatrixXd::Zero(b.size() * 3, (long)skeleton.size() * 3);

  Skeleton copy_skeleton = skeleton;

  Eigen::VectorXd tip = transformed_tips(skeleton, b);
  Eigen::VectorXd trans_tip;

  for (int i = 0; i < skeleton.size(); i++){
      for (int j = 0; j < DIM; j++){
          copy_skeleton[i].xzx[j] += h; // increment by h
          trans_tip = transformed_tips(copy_skeleton, b); // copy_skeleton remains unchanged
          copy_skeleton[i].xzx[j] -= h;  // revert to original

          J.col(3 * i + j) = (trans_tip - tip) / h;
      }
  }

  /////////////////////////////////////////////////////////////////////////////
}
