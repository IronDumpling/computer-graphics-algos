// Set the pixel color to blue or gray depending on is_moon.
//
// Uniforms:
uniform bool is_moon;
// Outputs:
out vec3 color;
void main()
{
  /////////////////////////////////////////////////////////////////////////////
  
  vec3 blue = vec3(0.06, 0.3, 0.51);
  vec3 gray = vec3(0.79, 0.79, 0.79);

  color = int(is_moon) * gray + (1 - int(is_moon)) * blue;

  /////////////////////////////////////////////////////////////////////////////
}
