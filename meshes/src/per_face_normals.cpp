#include "per_face_normals.h"
#include "triangle_area_normal.h"

void per_face_normals(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  Eigen::MatrixXd & N)
{
    N = Eigen::MatrixXd::Zero(F.rows(),3);
    ////////////////////////////////////////////////////////////////////////////

    Eigen::RowVector3d a, b, c;
    for (int face = 0; face < F.rows(); face++){
        a = V.row(F(face, 0));
        b = V.row(F(face, 1));
        c = V.row(F(face, 2));
        N.row(face) = triangle_area_normal(a, b, c).normalized();
    }

    ////////////////////////////////////////////////////////////////////////////
}
