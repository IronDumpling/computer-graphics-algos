#include "Sphere.h"
#include "Ray.h"

bool Sphere::intersect(
  const Ray & ray, const double min_t, double & t, Eigen::Vector3d & n) const
{
    ////////////////////////////////////////////////////////////////////////////

    Eigen::Vector3d ctr = ray.origin - this->center; // ctr = e - c
    // coefficients: a * x^2 + b * x + c = 0
    double a = ray.direction.dot(ray.direction);
    double b = 2.0 * ray.direction.dot(ctr);
    double c = ctr.dot(ctr) - this->radius * this->radius;
    double delta = b * b - 4 * a * c;

    if(delta <= 0){
        return false;
    }else{
        double t_1 = (- b + std::sqrt(delta)) / (2.0 * a);
        double t_2 = (- b - std::sqrt(delta)) / (2.0 * a);

        double t_max = std::fmax(t_1, t_2);
        double t_min = std::fmin(t_1, t_2);

        // t is the min value that is larger than t_min
        // t_min < t_max < min_t
        if(t_max < min_t) return false;

        // t_min < min_t < t_max
        else if(t_min < min_t) t = t_max;

        // min_t < t_min < t_max
        else t = t_min;

        n = (ctr + t * ray.direction).normalized();
        return true;
    }

    ////////////////////////////////////////////////////////////////////////////
}

