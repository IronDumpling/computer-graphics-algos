#include "cube.h"
#include "sphere.h"
#include "write_obj.h"
#include "QuadViewer.h"
#include "set_texture_from_png.h"
#include <igl/readOBJ.h>
#include <Eigen/Core>
#include <vector>
#include <iostream>
#include <memory>
#include <limits>
#include <functional>


int main(int argc, char * argv[])
{
  {
    // Step 1. Create mesh of a cube
    Eigen::MatrixXd V,UV,NV; // V: 3D Position Information; NV: 3D Normal Vector Information; UV: 2D Parameterization Information
                             // Every row of Eigen::MatrixXd can store a mesh vertex position
    Eigen::MatrixXi F,UF,NF; // Every row of Eigen::MatrixXi can store a list of indices into rows of position matrix, int indices

    cube(V,F,UV,UF,NV,NF);
    write_obj("cube.obj",V,F,UV,UF,NV,NF);

    igl::readOBJ("cube.obj",V,UV,NV,F,UF,NF);
    {
      QuadViewer v;
      v.set_mesh(V,F,UV,UF,NV,NF);
      set_texture_from_png("../data/rubiks-cube.png", v.viewer.data());
      v.launch();
    }
  }

  {
    // Step 2. Create mesh of a sphere
    Eigen::MatrixXd V,UV,NV; // V: 3D Position Information; NV: 3D Normal Vector Information; UV: 2D Parameterization Information
                             // Every row of Eigen::MatrixXd can store a mesh vertex position
    Eigen::MatrixXi F,UF,NF; // Every row of Eigen::MatrixXi can store a list of indices into rows of position matrix, int indices

    sphere(60,40,V,F,UV,UF,NV,NF);
    write_obj("sphere.obj",V,F,UV,UF,NV,NF);

    igl::readOBJ("sphere.obj",V,UV,NV,F,UF,NF);
    {
      QuadViewer v;
      v.set_mesh(V,F,UV,UF,NV,NF);
      set_texture_from_png("../data/earth-square.png", v.viewer.data());
      v.launch();
    }
  }
}
