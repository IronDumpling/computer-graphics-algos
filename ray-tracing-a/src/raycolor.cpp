#include "raycolor.h"
#include "first_hit.h"
#include "blinn_phong_shading.h"
#include "reflect.h"

#define MAX_RECURSIVE_CALL 8
#define FUDGE_FACTOR 1e-6

bool raycolor(
  const Ray & ray, 
  const double min_t,
  const std::vector< std::shared_ptr<Object> > & objects,
  const std::vector< std::shared_ptr<Light> > & lights,
  const int num_recursive_calls,
  Eigen::Vector3d & rgb)
{
  ////////////////////////////////////////////////////////////////////////////

  rgb = Eigen::Vector3d(0, 0, 0);

  // base case
  if(num_recursive_calls >= MAX_RECURSIVE_CALL){
      return false;
  }

  // variables for first hit test results
  int hit_id;
  double hit_t;
  Eigen::Vector3d hit_n;

  // recursive case
  if(first_hit(ray, min_t, objects, hit_id, hit_t, hit_n)){

      Eigen::Vector3d km = objects[hit_id]->material->km;
      rgb += blinn_phong_shading(ray, hit_id, hit_t, hit_n, objects, lights);

      // mirror reflection
      if(km.norm() > FUDGE_FACTOR){
          // initialise reflecting ray
          Ray ref_ray;
          ref_ray.origin = ray.origin + hit_t* ray.direction;
          ref_ray.direction = reflect(ray.direction, hit_n);

          Eigen::Vector3d ref_rgb;
          if(raycolor(ref_ray, FUDGE_FACTOR, objects, lights, num_recursive_calls + 1, ref_rgb)){
              rgb += (km.array() * ref_rgb.array()).matrix();
          }
      }
      return true;
  }

  return false;

  ////////////////////////////////////////////////////////////////////////////
}
