#include "vertex_triangle_adjacency.h"

void vertex_triangle_adjacency(
  const Eigen::MatrixXi & F,
  const int num_vertices,
  std::vector<std::vector<int> > & VF)
{
  VF.resize(num_vertices);
  ////////////////////////////////////////////////////////////////////////////

  for(int face = 0; face < F.rows(); face++){
      for(int edge = 0; edge < F.cols(); edge++){
          int vtx = F(face, edge);
          VF[vtx].push_back(face);
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}

