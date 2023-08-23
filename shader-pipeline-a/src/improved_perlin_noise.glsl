// Given a 3d position as a seed, compute an even smoother procedural noise
// value. "Improving Noise" [Perlin 2002].
//
// Inputs:
//   st  3D seed
// Values between  -½ and ½ ?
//
// expects: random_direction, improved_smooth_step
float improved_perlin_noise( vec3 st) 
{
  /////////////////////////////////////////////////////////////////////////////

  // reference: https://blog.csdn.net/lynon/article/details/78957106
  vec3 st_floor = floor(st);
  int fx = int(st_floor.x);
  int fy = int(st_floor.y);
  int fz = int(st_floor.z);

  float gradients[8];
  int idx = 0;
  for (int i = fx; i <= fx + 1; i++){
    for (int j = fy; j <= fy + 1; j++){
      for (int k = fz; k <= fz + 1; k++){
        float u = st.x - float(i);
        float v = st.y - float(j);
        float w = st.z - float(k);

        gradients[idx] = dot(random_direction(vec3(i, j, k)), vec3(u, v, w));
        idx++;
      }
    }
  }

  // smooth interpolation weights
  vec3 iw = improved_smooth_step(fract(st));  

  float ip_x1, ip_x2, ip_y1, ip_y2, ip_value;

  // interpolate on first face
  ip_x1 = mix(gradients[0], gradients[4], iw.x);
  ip_x2 = mix(gradients[2], gradients[6], iw.x);
  ip_y1 = mix(ip_x1, ip_x2, iw.y);

  // interpolate on second face
  ip_x1 = mix(gradients[1], gradients[5], iw.x);
  ip_x2 = mix(gradients[3], gradients[7], iw.x);
  ip_y2 = mix(ip_x1, ip_x2, iw.y);

  // mix the two face interpolated values to get the final perlin noise value
  ip_value = mix(ip_y1, ip_y2, iw.z);

  return 2.0 * ip_value / sqrt(3);
  
  /////////////////////////////////////////////////////////////////////////////
}

