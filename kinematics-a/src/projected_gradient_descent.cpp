#include "projected_gradient_descent.h"
#include "line_search.h"
#define MAX_STEP 1000

void projected_gradient_descent(
  const std::function<double(const Eigen::VectorXd &)> & f,
  const std::function<Eigen::VectorXd(const Eigen::VectorXd &)> & grad_f,
  const std::function<void(Eigen::VectorXd &)> & proj_z,
  const int max_iters,
  Eigen::VectorXd & z)
{
  /////////////////////////////////////////////////////////////////////////////

  double step;
  for (int i = 0; i < max_iters; i++){
      Eigen::VectorXd delta_z = grad_f(z);
      step = line_search(f, proj_z, z, delta_z, MAX_STEP);

      z = z - step * delta_z;
      proj_z(z);
  }

  /////////////////////////////////////////////////////////////////////////////
}
