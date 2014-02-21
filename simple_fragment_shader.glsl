#version 120

varying vec2 tex_coord0;
varying vec3 normal0;

varying vec3 light_dir;

uniform sampler2D texture_color;

void main() {
  vec3 cf;
  float intensity, af;
  vec4 tex_col = texture2D(texture_color, gl_TexCoord[0].st);

  intensity = max(dot(light_dir, normalize(normal0)), 0.0);

  cf = intensity * tex_col.rgb;
  af = tex_col.a;

  gl_FragColor = vec4(cf,af);
}

//varying vec4 frag_color;

// ganked from: https://code.google.com/p/opengl-tutorial-org/source/browse/tutorial02_red_triangle/SimpleVertexShader.vertexshader?name=2.1%20branch
//uniform sampler2D texture_color;
/*
void main()
{

  // Output color = red, alpha = 1
  //gl_FragColor = texture2D(texture_color, gl_TexCoord[0].st)// vec4(1,0,0,1);
  gl_FragColor = vec4(1,0,0,1);
}
*/
