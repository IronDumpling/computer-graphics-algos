#include "AABBTree.h"
#include "insert_box_into_box.h"
#include "iostream"
#define DIMENSION 3

typedef std::vector<std::shared_ptr<Object>> obj_vec;

AABBTree::AABBTree(
  const std::vector<std::shared_ptr<Object>> & objects,
  int a_depth): 
  depth(std::move(a_depth)), 
  num_leaves(objects.size())
{
  ////////////////////////////////////////////////////////////////////////////

  // Construct the leaf nodes if we are <= 2 objects
  this->left = nullptr;
  this->right = nullptr;

  switch (num_leaves) {
      // no object
      case 0:
          return;
      // one object
      case 1:
          this->left = objects[0];
          insert_box_into_box(objects[0]->box, this->box);
          return;
      // two objects
      case 2:
          this->left = objects[0];
          insert_box_into_box(objects[0]->box, this->box);

          this->right = objects[1];
          insert_box_into_box(objects[1]->box, this->box);
          return;

      default:
          break;
  }

  // more objects
  // find the longest axis
  int long_axis_dim = 0;
  double axis_min, axis_len, max_len = -std::numeric_limits<double>::infinity();

  for(int axis = 0; axis < DIMENSION; axis++){
      axis_min = std::numeric_limits<double>::infinity();
      axis_len = -std::numeric_limits<double>::infinity();

      for(const auto & obj : objects){
          axis_min = std::fmin(obj->box.min_corner[axis], axis_min);
          axis_len = std::fmax(obj->box.max_corner[axis] - axis_min, axis_len);
      }

      if(axis_len > max_len){
          long_axis_dim = axis;
          max_len = axis_len;
      }
  }

  // find middle object by quick sort
  auto sort_objects(objects);

  std::sort(sort_objects.begin(), sort_objects.end(), [&long_axis_dim](const std::shared_ptr<Object> & a, const std::shared_ptr<Object> & b){
      return a->box.center()[long_axis_dim] < b->box.center()[long_axis_dim];
  });

  // update AABB tree
  auto mid = sort_objects.begin() + num_leaves / 2;
  // left
  this->left = std::make_shared<AABBTree>(obj_vec (sort_objects.begin(), mid), this->depth + 1);
  insert_box_into_box(this->left->box, this->box);
  //right
  this->right = std::make_shared<AABBTree>(obj_vec (mid, sort_objects.end()), this->depth + 1);
  insert_box_into_box(this->right->box, this->box);

  ////////////////////////////////////////////////////////////////////////////
}
