// Add (hard code) an orbiting (point or directional) light to the scene. Light
// the scene using the Blinn-Phong Lighting Model.
//
// Uniforms:
uniform mat4 view;
uniform mat4 proj;
uniform float animation_seconds;
uniform bool is_moon;
// Inputs:
in vec3 sphere_fs_in;
in vec3 normal_fs_in;
in vec4 pos_fs_in; 
in vec4 view_pos_fs_in; 
// Outputs:
out vec3 color;
// expects: PI, blinn_phong
void main()
{
  /////////////////////////////////////////////////////////////////////////////

  // calculate light
  float theta = 0.25 * M_PI * animation_seconds;
  vec4 light = view * vec4(10 * cos(theta), 8, 10 * sin(theta), 1);

  // blinn-phong parameters
  vec3 ka = vec3(0.08, 0.08, 0.08);
  vec3 kd = int(is_moon) * vec3(0.79, 0.79, 0.79) + (1-int(is_moon)) * vec3(0.06, 0.3, 0.51);
  vec3 ks = int(is_moon) * vec3(0.6, 0.6, 0.6) + (1-int(is_moon)) * vec3(0.2, 0.3, 0.8);
  float p = int(is_moon) * 1000 + (1-int(is_moon)) * 500;

  vec3 n = normalize(normal_fs_in);
  vec3 v = -normalize(view_pos_fs_in.xyz);
  vec3 l = normalize(light.xyz - view_pos_fs_in.xyz);

  color = blinn_phong(ka, kd, ks, p, n, v, l);
  
  /////////////////////////////////////////////////////////////////////////////
}
