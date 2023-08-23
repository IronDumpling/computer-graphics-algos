#include "find_all_intersecting_pairs_using_AABBTrees.h"
#include "box_box_intersect.h"
#include <list> 

typedef std::pair<std::shared_ptr<Object>, std::shared_ptr<Object>> obj_pair;

void find_all_intersecting_pairs_using_AABBTrees(
  const std::shared_ptr<AABBTree> & rootA,
  const std::shared_ptr<AABBTree> & rootB,
  std::vector<obj_pair> & leaf_pairs)
{
  ////////////////////////////////////////////////////////////////////////////

  // clear return list
  leaf_pairs.clear();

  // roots don't intersect
  if(!box_box_intersect(rootA->box, rootB->box)) return;

  // push nodes into newly built queue
  std::list<obj_pair> q;
  q.push_back(std::make_pair(rootA, rootB));

  // BFS
  while(!q.empty()){
      // get node A and B from the front
      auto node_pair = q.front();
      auto nodeA = std::dynamic_pointer_cast<AABBTree>(node_pair.first),
           nodeB = std::dynamic_pointer_cast<AABBTree>(node_pair.second);
      q.pop_front();

      // node A and B are both the end of the branch
      if(!nodeA && !nodeB){
          leaf_pairs.push_back(std::make_pair(node_pair.first, node_pair.second));
      }

      // only node A is the end
      else if(!nodeA && nodeB){
          if(nodeB->left && box_box_intersect(node_pair.first->box, nodeB->left->box)){
              q.push_back(std::make_pair(node_pair.first, nodeB->left));
          }
          if(nodeB->right && box_box_intersect(node_pair.first->box, nodeB->right->box)){
              q.push_back(std::make_pair(node_pair.first, nodeB->right));
          }
      }

      // only node B is the end
      else if(nodeA && !nodeB){
          if(nodeA->left && box_box_intersect(node_pair.second->box, nodeA->left->box)){
              q.push_back(std::make_pair(nodeA->left, node_pair.second));
          }
          if(nodeA->right && box_box_intersect(node_pair.second->box, nodeA->right->box)){
              q.push_back(std::make_pair(nodeA->right, node_pair.second));
          }
      }

      // node A and B both contain children
      else{
          if(nodeA->left && nodeB->left && box_box_intersect(nodeA->left->box, nodeB->left->box)){
              q.push_back(std::make_pair(nodeA->left, nodeB->left));
          }
          if(nodeA->left && nodeB->right && box_box_intersect(nodeA->left->box, nodeB->right->box)){
              q.push_back(std::make_pair(nodeA->left, nodeB->right));
          }
          if(nodeA->right && nodeB->left && box_box_intersect(nodeA->right->box, nodeB->left->box)){
              q.push_back(std::make_pair(nodeA->right, nodeB->left));
          }
          if(nodeA->right && nodeB->right && box_box_intersect(nodeA->right->box, nodeB->right->box)){
              q.push_back(std::make_pair(nodeA->right, nodeB->right));
          }
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}
