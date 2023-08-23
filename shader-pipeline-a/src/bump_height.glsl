// Create a bumpy surface by using procedural noise to generate a height (
// displacement in normal direction).
//
// Inputs:
//   is_moon  whether we're looking at the moon or centre planet
//   s  3D position of seed for noise generation
// Returns elevation adjust along normal (values between -0.1 and 0.1 are
//   reasonable.
float bump_height( bool is_moon, vec3 s)
{
  /////////////////////////////////////////////////////////////////////////////
  
  float object_factor = int(is_moon) * 1.25 + (1-int(is_moon)) * 0.5;
  
  float twist_factor = int(is_moon) * 7 + (1-int(is_moon)) * 2;
  float density = int(is_moon) * 3 + (1-int(is_moon)) * 6;
  float weight = int(is_moon) * 3 + (1-int(is_moon)) * 4;
  float noise = sqrt(abs(1 + cos(s.x + twist_factor * improved_perlin_noise(density * s))/weight));
  
  return smooth_heaviside(noise, object_factor);

  /////////////////////////////////////////////////////////////////////////////
}
