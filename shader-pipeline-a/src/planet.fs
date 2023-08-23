// Generate a procedural planet and orbiting moon. Use layers of (improved)
// Perlin noise to generate planetary features such as vegetation, gaseous
// clouds, mountains, valleys, ice caps, rivers, oceans. Don't forget about the
// moon. Use `animation_seconds` in your noise input to create (periodic)
// temporal effects.
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
// expects: model, blinn_phong, bump_height, bump_position,
// improved_perlin_noise, tangent
float rand(vec2 co, float seed){
    return fract(sin(dot(co.xy + seed ,vec2(12.9898,78.233))) * 43758.5453);
}

void main()
{
  ////////////////////////////////////////////////////////////////////////////
  
  // calculate light
  float theta = 0.25 * M_PI * animation_seconds;
  vec4 light = view * vec4(10 * cos(theta), 8, 10 * sin(theta), 1);

  // calculate blinn-phong parameters
  vec3 ka = vec3(0.15, 0.15, 0.15);
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

  // jupiter shader
  float time = animation_seconds;
  float time_scale = 0.5;
  vec2 zoom = vec2(20.0,5.5);
  vec2 offset = vec2(2.0,1.0);
  vec2 point = sphere_fs_in.xy * zoom + offset;
  float p_x = float(point.x); 
  float p_y = float(point.y);
    
  float a_x = 0.2;
  float a_y = 0.3;
    
  for(int i=1; i<int(10); i++){
      float float_i = float(i); 
      point.x+=a_x*sin(float_i*point.y+time * time_scale);
      point.y+=a_y*cos(float_i*point.x+time);
  }
      
  float r = cos(point.x+point.y+2.0)*0.5+0.5;
  float g = sin(point.x+point.y+2.2)*0.5+0.5;
  float b = (sin(point.x+point.y+1.0)+cos(point.x+point.y+1.5))*0.5+0.5;
  
  // apply jupiter color
  vec3 surfaceColor = vec3(r,g,b) + vec3(0.5);
  vec3 atmosphereColor = vec3(0.7, 0.6, 0.5);
  vec3 fresnel = mix(surfaceColor, atmosphereColor, 0.05);
  
  color *= fresnel.rgb;

  /////////////////////////////////////////////////////////////////////////////
}