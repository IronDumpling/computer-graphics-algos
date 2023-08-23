// Construct the model transformation matrix. The moon should orbit around the
// origin. The other object should stay still.
//
// Inputs:
//   is_moon  whether we're considering the moon
//   time  seconds on animation clock
// Returns affine model transformation as 4x4 matrix
//
// expects: identity, rotate_about_y, translate, PI
mat4 model(bool is_moon, float time)
{
  /////////////////////////////////////////////////////////////////////////////
  
  mat4 res = (1 - int(is_moon)) * identity();

  float theta = M_PI * time * 0.6;
  
  mat4 moon_res = int(is_moon) * transpose(translate(vec3(2*cos(theta), 0, -2*sin(theta)))); // translate orbit radius to 2 times in x, z 
  moon_res *= uniform_scale(0.3); // shrink planet to 30%
  moon_res *= rotate_about_y(theta); // rotate around earth

  res += moon_res;

  return res; 

  /////////////////////////////////////////////////////////////////////////////
}
