#include "end_effectors_objective_and_gradient.h"
#include "transformed_tips.h"
#include "kinematics_jacobian.h"
#include "copy_skeleton_at.h"
#include <iostream>

void end_effectors_objective_and_gradient(
  const Skeleton & skeleton,
  const Eigen::VectorXi & b,
  const Eigen::VectorXd & xb0,
  std::function<double(const Eigen::VectorXd &)> & f,
  std::function<Eigen::VectorXd(const Eigen::VectorXd &)> & grad_f,
  std::function<void(Eigen::VectorXd &)> & proj_z)
{
  /////////////////////////////////////////////////////////////////////////////

  f = [&](const Eigen::VectorXd & A)->double
  {
      Skeleton copy_skeleton = copy_skeleton_at(skeleton, A);
      Eigen::VectorXd tips = transformed_tips(copy_skeleton, b);

      double dist = 0;
      for (int i = 0; i < b.size(); i++) {
          dist += pow(tips[3 * i + 0] - xb0[3 * i + 0], 2);
          dist += pow(tips[3 * i + 1] - xb0[3 * i + 1], 2);
          dist += pow(tips[3 * i + 2] - xb0[3 * i + 2], 2);
      }

      return dist;
  };

  grad_f = [&](const Eigen::VectorXd & A)->Eigen::VectorXd
  {
      Skeleton copy_skeleton = copy_skeleton_at(skeleton, A);
      Eigen::VectorXd tips = transformed_tips(copy_skeleton, b);

      Eigen::MatrixXd J;
      kinematics_jacobian(copy_skeleton, b, J);

      return J.transpose() * 2 * (tips - xb0);
  };

  proj_z = [&](Eigen::VectorXd & A)
  {
      assert(skeleton.size()*3 == A.size());
      for (int i = 0; i < skeleton.size(); i ++){
          A[i*3 + 0] = std::max(skeleton[i].xzx_min[0], std::min(skeleton[i].xzx_max[0], A[3*i + 0]));
          A[i*3 + 1] = std::max(skeleton[i].xzx_min[1], std::min(skeleton[i].xzx_max[1], A[3*i + 1]));
          A[i*3 + 2] = std::max(skeleton[i].xzx_min[2], std::min(skeleton[i].xzx_max[2], A[3*i + 2]));
      }
  };

  /////////////////////////////////////////////////////////////////////////////
}
