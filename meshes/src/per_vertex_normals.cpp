#include "per_vertex_normals.h"
#include "triangle_area_normal.h"
#include "vertex_triangle_adjacency.h"

void per_vertex_normals(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  Eigen::MatrixXd & N)
{
    N = Eigen::MatrixXd::Zero(V.rows(),3);
    ////////////////////////////////////////////////////////////////////////////

    std::vector<std::vector<int>> VF;
    vertex_triangle_adjacency(F, V.rows(), VF);

    // normal vector
    N = Eigen::MatrixXd::Zero(V.rows(), 3);

    // traverse each vertex
    for(int vtx = 0; vtx < VF.size(); vtx++){
        // traverse each face around the vertex
        for(int face : VF[vtx]){
            N.row(vtx) += triangle_area_normal(V.row(F(face, 0)),
                                               V.row(F(face, 1)),
                                               V.row(F(face, 2)));
        }

        N.row(vtx) = N.row(vtx).normalized();
    }

    ////////////////////////////////////////////////////////////////////////////
}
