#include "point_AABBTree_squared_distance.h"
#include "point_box_squared_distance.h"
#include <queue>

typedef std::pair<double, std::shared_ptr<Object>> node;

bool point_AABBTree_squared_distance(
    const Eigen::RowVector3d & query,
    const std::shared_ptr<AABBTree> & root,
    const double min_sqrd,
    const double max_sqrd,
    double & sqrd,
    std::shared_ptr<Object> & descendant)
{
  ////////////////////////////////////////////////////////////////////////////

  std::priority_queue<node, std::vector<node>, std::greater<node>> pq;
  pq.push(std::make_pair(point_box_squared_distance(query, root->box), root));

  sqrd = std::numeric_limits<double>::infinity();

  while(!pq.empty()){
      // get top element
      auto top = pq.top();
      pq.pop();
      // get distance and tree of the top element
      double distance = top.first;
      std::shared_ptr<AABBTree> aabb = std::dynamic_pointer_cast<AABBTree>(top.second);

      // check only if distance is smaller
      if(distance < sqrd){
          if(!aabb){
              // update return values
              sqrd = distance; // min square distance
              descendant = top.second; // closest object
          }
          else{
              if(aabb->left){
                  distance = point_box_squared_distance(query, aabb->left->box);
                  pq.push(std::make_pair(distance, aabb->left));
              }

              if(aabb->right){
                  distance = point_box_squared_distance(query, aabb->right->box);
                  pq.push(std::make_pair(distance, aabb->right));
              }
          }
      }
  }

  return (min_sqrd <= sqrd) && (sqrd <= max_sqrd);

  ////////////////////////////////////////////////////////////////////////////
}
