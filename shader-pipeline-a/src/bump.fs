// Set the pixel color using Blinn-Phong shading (e.g., with constant blue and
// gray material color) with a bumpy texture.
// 
// Uniforms:
uniform mat4 view;
uniform mat4 proj;
uniform float animation_seconds;
uniform bool is_moon;
// Inputs:
//                     linearly interpolated from tessellation evaluation shader
//                     output
in vec3 sphere_fs_in;
in vec3 normal_fs_in;
in vec4 pos_fs_in; 
in vec4 view_pos_fs_in; 
// Outputs:
//               rgb color of this pixel
out vec3 color;
// expects: model, blinn_phong, bump_height, bump_position,
// improved_perlin_noise, tangent
void main()
{
  /////////////////////////////////////////////////////////////////////////////

  // calculate light
  float theta = 0.25 * M_PI * animation_seconds;
  vec4 light = view * vec4(10 * cos(theta), 8, 10 * sin(theta), 1);
    
  // calculate blinn-phong parameters
  vec3 ka = vec3(0.08, 0.08, 0.08);
  vec3 kd = int(is_moon) * vec3(0.79, 0.79, 0.79) + (1-int(is_moon)) * vec3(0.06, 0.3, 0.51);
  vec3 ks = int(is_moon) * vec3(0.6, 0.6, 0.6) + (1-int(is_moon)) * vec3(0.2, 0.3, 0.8);
  float p = int(is_moon) * 1000 + (1-int(is_moon)) * 500;
  vec3 v = -normalize(view_pos_fs_in.xyz);
  vec3 l = normalize(light.xyz - view_pos_fs_in.xyz);

  // put bumps on surface
  // reference: https://github.com/alecjacobson/computer-graphics-shader-pipeline
  vec3 T, B;
  tangent(sphere_fs_in, T, B);
  vec3 bump = bump_position(is_moon, sphere_fs_in);

  float e = 1e-4;
  vec3 dp_dt = (bump_position (is_moon, sphere_fs_in + e * T) - bump) / e;
  vec3 dp_db = (bump_position (is_moon, sphere_fs_in + e * B) - bump) / e;

  vec3 perceived_n = normalize( cross(dp_dt, dp_db) );
  if ( dot(perceived_n, sphere_fs_in) < 0 ) {
    perceived_n *= -1;
  }

  // cancel the view and model transformations on percieved normal
  mat4 model = model(is_moon, animation_seconds);
  vec3 n = normalize((transpose(inverse(view)) * transpose(inverse(model)) * vec4(perceived_n,1)).xyz);
  
  color = blinn_phong(ka, kd, ks, p, n, v, l);

  /////////////////////////////////////////////////////////////////////////////
}
