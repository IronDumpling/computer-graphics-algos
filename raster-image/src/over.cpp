#include "over.h"

void over(
  const std::vector<unsigned char> & A,
  const std::vector<unsigned char> & B,
  const int & width,
  const int & height,
  std::vector<unsigned char> & C)
{
  C.resize(A.size());
  ////////////////////////////////////////////////////////////////////////////

  int pixel_index_base;
  double alpha_a, alpha_b;

  for(int row = 0; row < height; row++){
      for(int col = 0; col < width; col++){

          pixel_index_base = (col + row * width) * 4;
          alpha_a = A[pixel_index_base + 3]/255.0;
          alpha_b = B[pixel_index_base + 3]/255.0;

          // rgb channels
          for(int chn = 0; chn < 3; chn++){
              C[pixel_index_base + chn] = (unsigned char)(
                      (double) alpha_a * A[pixel_index_base + chn] +
                      (double) (1.0 - alpha_a) * alpha_b * B[pixel_index_base + chn]);
          }

          // alpha channel
          C[pixel_index_base + 3] = (unsigned char)((alpha_a + alpha_b * (1.0 - alpha_a)) * 255);
      }
  }

  ////////////////////////////////////////////////////////////////////////////
}
