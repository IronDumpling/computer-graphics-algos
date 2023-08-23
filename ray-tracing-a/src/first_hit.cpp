#include "first_hit.h"

bool first_hit(
  const Ray & ray, 
  const double min_t,
  const std::vector< std::shared_ptr<Object> > & objects,
  int & hit_id, 
  double & t,
  Eigen::Vector3d & n)
{
    ////////////////////////////////////////////////////////////////////////////、

    // record current min t
    double curr_hit_t = std::numeric_limits<double>::max();
    hit_id = -1;
    Eigen::Vector3d curr_hit_n;

    for(int index = 0; index < objects.size(); index++){
        // intersect function returns t, n
        if(objects[index]->intersect(ray, min_t, t, n)){
            if(t >= min_t && t < curr_hit_t){
                hit_id = index;
                curr_hit_t = t;
                curr_hit_n = n;
            }
        }
    }

    if(hit_id >= 0){
        // assign the min t to output value
        t = curr_hit_t;
        n = curr_hit_n;
        return true;
    }
    else{
        return false;
    }

    ////////////////////////////////////////////////////////////////////////////
}
