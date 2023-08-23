#include "write_obj.h"
#include <fstream>
#include <cassert>
#include <iostream>

// write a pure-triangle or pure-squad mesh
bool write_obj(
  const std::string & filename,
  const Eigen::MatrixXd & V, // 3D vertex positions
  const Eigen::MatrixXi & F, // faces
  const Eigen::MatrixXd & UV, // 2D parametrization positions
  const Eigen::MatrixXi & UF, // 2D faces
  const Eigen::MatrixXd & NV, // 3D normal vectors
  const Eigen::MatrixXi & NF) // 3D normal faces
{
  assert((F.size() == 0 || F.cols() == 3 || F.cols() == 4) && "F must have 3 or 4 columns");
  std::ofstream file(filename);
  ////////////////////////////////////////////////////////////////////////////

  // corner case
  if(!file.is_open()){
      std::cout << "The file: '" << filename << "' could not be opened" << std::endl;
      return false;
  }

  // write 3D vertices
  for (int i = 0; i < V.rows(); i++) {
      file << "v " << V(i, 0) << " " << V(i, 1) << " " << V(i, 2) << std::endl;
  }

  // write 2D textures
  for (int i = 0; i < UV.rows(); i++) {
      file << "vt " << UV(i, 0) << " " << UV(i, 1) << std::endl;
  }

  // write 3D normals
  for (int i = 0; i < NV.rows(); i++) {
      file << "vn " << NV(i, 0) << " " << NV(i, 1) << " " << NV(i, 2) << std::endl;
  }

  // write faces
  for (int i = 0; i < F.rows(); i++) {
      file << "f ";
      for (int j = 0; j < F.cols(); j++) {
          file << F(i, j)+1 << "/" << UF(i, j)+1 << "/" << NF(i, j)+1;
          if(j < F.cols() - 1) file << " ";
      }
      file << std::endl;
  }

  ////////////////////////////////////////////////////////////////////////////

  // close
  file.close();
  return false;
}
