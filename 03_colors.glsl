#ifdef GL_ES
precision mediump float;
#endif

// ShaderToy equivalents
// uniform vec3 iResolution // viewport resolution (in pixels)
// uniform vec4 iMouse // mouse pixel coords xy: current, zw: click
// uniform float iTime // time in s

#define PI 3.14159265359


vec3 colorA = vec3(0.149,0.141,0.912);
vec3 colorB = vec3(1.000,0.833,0.224);

void main(){
    vec3 color = vec3(0.0);

    float pct = abs(sin(iTime));

    // Mix uses pct (a value 0-1) to 
    // mix the two colors

    color = mix(colorA,colorB,pct);
   gl_FragColor = vec4(color,1.0);

}
