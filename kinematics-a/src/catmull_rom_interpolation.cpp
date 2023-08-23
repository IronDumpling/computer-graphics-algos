#include "catmull_rom_interpolation.h"
#include <Eigen/Dense>
#include <vector>

Eigen::Vector3d catmull_rom_interpolation(
  const std::vector<std::pair<double, Eigen::Vector3d> > & keyframes,
  double t)
{
  /////////////////////////////////////////////////////////////////////////////

  // corner cases
  if(keyframes.empty()) return Eigen::Vector3d::Zero();
  if (keyframes.size() == 1) return keyframes[0].second;

  t = fmod(t, keyframes.back().first);

  std::vector<Eigen::Vector3d> point = std::vector<Eigen::Vector3d>(4, Eigen::Vector3d::Zero());
  std::vector<double> time = std::vector<double>(4, 0);
  Eigen::Vector3d m0, m1, theta0, theta1;

  // common case
  for(int i = 0; i < keyframes.size(); i++){
      if(t == keyframes[i].first){
          return keyframes[i].second;
      }

      // reference: https://en.wikipedia.org/wiki/Cubic_Hermite_spline#Interpolation_on_the_unit_interval_with_matched_derivatives_at_endpoints
      if(keyframes[i].first < t && t < keyframes[i+1].first){
          // t(n - 1) and p(n - 1)
          time[0] = (i == 0) ? keyframes[0].first : keyframes[i - 1].first;
          point[0] = (i == 0) ? keyframes[0].second : keyframes[i - 1].second;

          // t(n) and p(n)
          time[1] = keyframes[i].first;
          point[1] = keyframes[i].second;

          // t(n + 1) and p(n + 1)
          time[2] = keyframes[i + 1].first;
          point[2] = keyframes[i + 1].second;

          // t(n + 2) and p(n + 2)
          time[3] = (i == keyframes.size()-2) ? keyframes[i + 1].first : keyframes[i + 2].first;
          point[3] = (i == keyframes.size()-2) ? keyframes[i + 1].second : keyframes[i + 2].second;

          m0 = (point[2] - point[0]) / (time[2] - time[0]);
          m1 = (point[3] - point[1]) / (time[3] - time[1]);

          theta0 = point[1];
          theta1 = point[2];

          t = (t - time[1]) / (time[2] - time[1]);

          break;
      }
  }

  double t2 = pow(t, 2), t3 = pow(t, 3);
  return (2 * t3 - 3 * t2 + 1) * theta0 + (-2 * t3 + 3 * t2) * theta1 + (t3 - 2 * t2 + t) * m0 + (t3 - t2) * m1;

  /////////////////////////////////////////////////////////////////////////////
}
