#include "per_corner_normals.h"
#include "triangle_area_normal.h"
#include "vertex_triangle_adjacency.h"
#include <iostream>

void per_corner_normals(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  const double corner_threshold,
  Eigen::MatrixXd & N)
{
    N = Eigen::MatrixXd::Zero(F.rows()*3,3);
    ////////////////////////////////////////////////////////////////////////////

    std::vector< std::vector<int> > VF;
    vertex_triangle_adjacency(F, V.rows(), VF);

    // threshold for normal vector calculation
    const double EPSILON = cos(M_PI * corner_threshold / 180.0);

    // traverse each face
    for (int face = 0; face < F.rows(); face++) {
        Eigen::RowVector3d face_normal = triangle_area_normal(V.row(F(face, 0)),
                                                              V.row(F(face,1)),
                                                              V.row(F(face,2))).normalized();

        // traverse each corner of current face
        for (int corner = 0; corner < F.cols(); corner++) {
            std::vector<int> neighbors = VF[F(face, corner)];
            Eigen::RowVector3d n(0, 0, 0);

            // traverse each neighbor face of current corner
            for (int neighbor : neighbors) {
                Eigen::RowVector3d neighbor_normal = triangle_area_normal(V.row(F(neighbor, 0)),
                                                                          V.row(F(neighbor, 1)),
                                                                          V.row(F(neighbor, 2))).normalized();

                if (neighbor_normal.dot(face_normal) > EPSILON)
                    n += neighbor_normal;
            }

            N.row(face * 3 + corner) = n.normalized();
        }
    }

    ////////////////////////////////////////////////////////////////////////////
}
