#include "line_search.h"
#include <iostream>
#define MIN_STEP 1e-4

double line_search(
  const std::function<double(const Eigen::VectorXd &)> & f,
  const std::function<void(Eigen::VectorXd &)> & proj_z,
  const Eigen::VectorXd & z,
  const Eigen::VectorXd & dz,
  const double max_step)
{
  /////////////////////////////////////////////////////////////////////////////

  double step = max_step;  // initialize to max
  double base_energy = f(z);

  Eigen::VectorXd delta_z;

  while(step > MIN_STEP){
      delta_z = z - step * dz;
      proj_z(delta_z);
      if(f(delta_z) > base_energy)
          step /= 2;
      else
          return step;
  }

  return 0;

  /////////////////////////////////////////////////////////////////////////////
}
