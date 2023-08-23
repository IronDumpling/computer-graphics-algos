#include "nearest_neighbor_brute_force.h"
#include <limits>// std::numeric_limits<double>::infinity();

void nearest_neighbor_brute_force(
  const Eigen::MatrixXd & points,
  const Eigen::RowVector3d & query,
  int & I,
  double & sqrD)
{
  ////////////////////////////////////////////////////////////////////////////

  I = -1;
  sqrD = std::numeric_limits<double>::infinity();
  double tmp_d_sqr;

  for(int row = 0; row < points.rows(); ++row){
      tmp_d_sqr = (points.row(row) - query).squaredNorm();

      if(tmp_d_sqr < sqrD){
          sqrD = tmp_d_sqr;
          I = row;
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}
