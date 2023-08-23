#include "AABBTree.h"
#include "ray_intersect_box.h"

// See AABBTree.h for API
bool AABBTree::ray_intersect(
  const Ray& ray,
  const double min_t,
  const double max_t,
  double & t,
  std::shared_ptr<Object> & descendant) const 
{
  ////////////////////////////////////////////////////////////////////////////

  // no hit on current box
  if(!ray_intersect_box(ray, this->box, min_t, max_t))
      return false;

  std::shared_ptr<Object> left_node = this->left, right_node = this->right;

  // post-order traverse
  double left_t, right_t;
  bool hit_left = this->left && this->left->ray_intersect(ray, min_t, max_t, left_t, left_node);
  bool hit_right = this->right && this->right->ray_intersect(ray, min_t, max_t, right_t, right_node);

  // current node
  // hit both children
  if(hit_left && hit_right){
      t = std::fmin(left_t, right_t);
      descendant = (left_t < right_t) ? left_node : right_node;
  }else if(hit_left){
      t = left_t;
      descendant = left_node;
  }else if(hit_right){
      t = right_t;
      descendant = right_node;
  }else // hit no children
      return false;

  return true;

  ////////////////////////////////////////////////////////////////////////////
}

