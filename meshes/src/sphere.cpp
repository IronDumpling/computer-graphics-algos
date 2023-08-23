#include "sphere.h"
#include <iostream>

// construct a quad mesh of a sphere
void sphere(
  const int num_faces_u, // number of faces in the longitudinal direction
  const int num_faces_v, // number of faces in the latitudinal direction
  Eigen::MatrixXd & V,
  Eigen::MatrixXi & F,
  Eigen::MatrixXd & UV,
  Eigen::MatrixXi & UF,
  Eigen::MatrixXd & NV,
  Eigen::MatrixXi & NF)
{
  ////////////////////////////////////////////////////////////////////////////

  // reserve vertices sizes
  V.resize((num_faces_u + 1) * (num_faces_v + 1), 3);
  NV.resize((num_faces_u + 1) * (num_faces_v + 1), 3);
  UV.resize((num_faces_u + 1) * (num_faces_v + 1), 2);
  // reserve faces sizes
  F.resize(num_faces_u * num_faces_v, 4);
  NF.resize(num_faces_u * num_faces_v, 4);
  UF.resize(num_faces_u * num_faces_v, 4);

  // reference: https://en.wikipedia.org/wiki/Spherical_coordinate_system#Cartesian_coordinates
  const double THETA_INCREMENT = M_PI / num_faces_v; // inclination level increment in range [0, pi]
  const double PHI_INCREMENT = (2 * M_PI) / num_faces_u; // azimuthal angle increment in range [0, 2pi]
  const double U_INCREMENT = 1.0 / (num_faces_u + 1); // horizontal projection
  const double V_INCREMENT = 1.0 / (num_faces_v + 1); // vertical projection

  // Part 1. construct vertex info: V, UV, NV
  double polar[2], cart[3];
  for (int row = 0; row <= num_faces_v; row++) { // get the lower and upper vertices
      for (int col = 0; col <= num_faces_u; col++) { // get the left and right vertices
          // polar coordinates
          polar[0] = row * THETA_INCREMENT;
          polar[1] = col * PHI_INCREMENT;

          // transform to cartesian coordinates
          cart[0] = cos(polar[1]) * sin(polar[0]);
          cart[1] = sin(polar[1]) * sin(polar[0]);
          cart[2] = cos(polar[0]);

          int vertex = row * (num_faces_u + 1) + col;
          // write in matrix
          V.row(vertex) = Eigen::Vector3d(cart[1], cart[2], cart[0]); // stores duplicates at col = 0, col = end to simplify face code
          NV.row(vertex) = Eigen::Vector3d(cart[1], cart[2], cart[0]); // vector from origin to (x, y, z) is also the normal
          UV.row(vertex) = Eigen::Vector2d(U_INCREMENT * col, V_INCREMENT * (num_faces_v + 1 - row)); // calculate uv mapping
      }
  }

  // Part 2. construct face info: F, UF, NF
  int v[4];
  for (int row = 0; row < num_faces_v; row++) {
      for (int col = 0; col < num_faces_u; col++) {
          // write in CCW direction
          // bottom-left vertex first
          int vertex = row * (num_faces_u + 1) + col;
          v[0] = vertex;
          v[1] = vertex + 1;
          v[2] = vertex + 1 + (num_faces_u + 1);
          v[3] = vertex + (num_faces_u + 1);

          int face = row * num_faces_u + col;
          // write in matrix
          F.row(face) = Eigen::Vector4i(v[0], v[1], v[2], v[3]);
          NF.row(face) = Eigen::Vector4i(v[0], v[1], v[2], v[3]);
          UF.row(face) = Eigen::Vector4i(v[0], v[1], v[2], v[3]);
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}
