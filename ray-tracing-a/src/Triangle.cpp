#include "Triangle.h"
#include "Ray.h"
#include <Eigen/Geometry>
#include <iostream>

bool Triangle::intersect(
  const Ray & ray, const double min_t, double & t, Eigen::Vector3d & n) const
{
    ////////////////////////////////////////////////////////////////////////////

    Eigen::Vector3d t_1 = std::get<1>(this->corners) - std::get<0>(this->corners);
    Eigen::Vector3d t_2 = std::get<2>(this->corners) - std::get<0>(this->corners);

    Eigen::Matrix3d m;
    m << t_1, t_2, -ray.direction;

    if(m.determinant() == 0) return false;
    else{
        Eigen::Vector3d params = m.inverse() * (ray.origin - std::get<0>(this->corners));

        if(params[0] < 0 ||
        params[1] < 0 ||
        params[0] + params[1] > 1 ||
        params[2] < min_t){
            return false;
        }
        else{
            t = params[2];
            n = t_1.cross(t_2).normalized();
            return true;
        }
    }

    ////////////////////////////////////////////////////////////////////////////
}


