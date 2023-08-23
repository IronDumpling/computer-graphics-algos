#include "blinn_phong_shading.h"
#include "first_hit.h"
#include <iostream>
#include "cmath"

#define AMBIENT_INTENSE 0.1
#define FUDGE_FACTOR 1e-6

Eigen::Vector3d blinn_phong_shading(
  const Ray & ray,
  const int & hit_id, 
  const double & t,
  const Eigen::Vector3d & n,
  const std::vector< std::shared_ptr<Object> > & objects,
  const std::vector<std::shared_ptr<Light> > & lights)
{
  ////////////////////////////////////////////////////////////////////////////

  Eigen::Vector3d rgb = Eigen::Vector3d(0, 0, 0);
  double max_t;

  // ray towards light source
  Ray to_light;
  to_light.origin = ray.origin + ray.direction * t; // generate the origin

  // variables for first hit test results
  int first_hit_id;
  double first_hit_t;
  Eigen::Vector3d first_hit_n;

  // object material coefficients
  Eigen::Vector3d ka = objects[hit_id]->material->ka; // ambient
  Eigen::Vector3d kd = objects[hit_id]->material->kd; // diffuse
  Eigen::Vector3d ks = objects[hit_id]->material->ks; // specular
  Eigen::Vector3d diffuse, half_way, specular;
  double phong_exp = objects[hit_id]->material->phong_exponent;

  // part 1. ambient
  rgb += ka * AMBIENT_INTENSE;

  // part 2. lights
  for (auto & light : lights){
      light->direction(to_light.origin, to_light.direction, max_t); // generate the direction

      // part 2.1 in the shadow / hit other objects before
      if(first_hit(to_light, FUDGE_FACTOR, objects, first_hit_id, first_hit_t, first_hit_n) && first_hit_t < max_t){
          continue;
      }

      // part 2.2 not in the shadow
      else{
          // diffuse
          diffuse = kd * std::fmax(0, n.dot(to_light.direction));

          // specular
          half_way = (to_light.direction - ray.direction).normalized();
          specular = ks * std::pow(std::fmax(0, n.dot(half_way)), phong_exp);

          // shading
          rgb += ((diffuse + specular).array() * (light->I).array()).matrix();
      }
  }

  return rgb;

  ////////////////////////////////////////////////////////////////////////////
}
