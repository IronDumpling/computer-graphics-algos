#include "cube.h"

// construct a quad mesh of a cube including parameterization and per-face normals
void cube(
  Eigen::MatrixXd & V,
  Eigen::MatrixXi & F,
  Eigen::MatrixXd & UV,
  Eigen::MatrixXi & UF,
  Eigen::MatrixXd & NV,
  Eigen::MatrixXi & NF)
{
  ////////////////////////////////////////////////////////////////////////////

  // reserve sizes
  V.resize(8,3);
  F.resize(6,4);
  UV.resize(14,2);
  UF.resize(6,4);
  NV.resize(6,3);
  NF.resize(6,4);

  // Part 1. construct vertex info: V, UV, NV
  // 3D vertex
  V.row(0) = Eigen::Vector3d(0, 0, 0);
  V.row(1) = Eigen::Vector3d(0, 0, 1);
  V.row(2) = Eigen::Vector3d(1, 0, 1);
  V.row(3) = Eigen::Vector3d(1, 0, 0);
  V.row(4) = Eigen::Vector3d(0, 1, 1);
  V.row(5) = Eigen::Vector3d(0, 1, 0);
  V.row(6) = Eigen::Vector3d(1, 1, 1);
  V.row(7) = Eigen::Vector3d(1, 1, 0);

  // 2D texture mapping coordinates for each vertex
  // times 1/4 to map coordinates to [0, 1]
  UV.row(0) = 0.25 * Eigen::Vector2d(1, 0);
  UV.row(1) = 0.25 * Eigen::Vector2d(2, 0);
  UV.row(2) = 0.25 * Eigen::Vector2d(0, 1);
  UV.row(3) = 0.25 * Eigen::Vector2d(1, 1);
  UV.row(4) = 0.25 * Eigen::Vector2d(2, 1);
  UV.row(5) = 0.25 * Eigen::Vector2d(3, 1);
  UV.row(6) = 0.25 * Eigen::Vector2d(4, 1);
  UV.row(7) = 0.25 * Eigen::Vector2d(0, 2);
  UV.row(8) = 0.25 * Eigen::Vector2d(1, 2);
  UV.row(9) = 0.25 * Eigen::Vector2d(2, 2);
  UV.row(10) = 0.25 * Eigen::Vector2d(3, 2);
  UV.row(11) = 0.25 * Eigen::Vector2d(4, 2);
  UV.row(12) = 0.25 * Eigen::Vector2d(1, 3);
  UV.row(13) = 0.25 * Eigen::Vector2d(2, 3);

  // 3D normal vectors
  NV.row(0) = Eigen::Vector3d(0, -1, 0);
  NV.row(1) = Eigen::Vector3d(-1, 0, 0);
  NV.row(2) = Eigen::Vector3d(0, 0, -1);
  NV.row(3) = Eigen::Vector3d(1, 0, 0);
  NV.row(4) = Eigen::Vector3d(0, 0, 1);
  NV.row(5) = Eigen::Vector3d(0, 1, 0);

  // Part 2. construct face info: F, UF, NF
  // bottom
  F.row(0) = Eigen::Vector4i(0, 3, 2, 1); // F: indices of four corners of each face in V
  UF.row(0) = Eigen::Vector4i(3, 4, 1, 0); // UF: indices of four corners of each face in UV
  NF.row(0) = Eigen::Vector4i(0, 0, 0, 0); // NF: indices of normal vector of each face in NV

  // left
  F.row(1) = Eigen::Vector4i(4, 5, 0, 1);
  UF.row(1) = Eigen::Vector4i(7, 8, 3, 2);
  NF.row(1) = Eigen::Vector4i(1, 1, 1, 1);

  // back
  F.row(2) = Eigen::Vector4i(5, 7, 3, 0);
  UF.row(2) = Eigen::Vector4i(8, 9, 4, 3);
  NF.row(2) = Eigen::Vector4i(2, 2, 2, 2);

  // right
  F.row(3) = Eigen::Vector4i(7, 6, 2, 3);
  UF.row(3) = Eigen::Vector4i(9, 10, 5, 4);
  NF.row(3) = Eigen::Vector4i(3, 3, 3, 3);

  // front
  F.row(4) = Eigen::Vector4i(6, 4, 1, 2);
  UF.row(4) = Eigen::Vector4i(10, 11, 6, 5);
  NF.row(4) = Eigen::Vector4i(4, 4, 4, 4);

  // top
  F.row(5) = Eigen::Vector4i(4, 6, 7, 5);
  UF.row(5) = Eigen::Vector4i(12, 13, 9, 8);
  NF.row(5) = Eigen::Vector4i(5, 5, 5, 5);

  ////////////////////////////////////////////////////////////////////////////
}
