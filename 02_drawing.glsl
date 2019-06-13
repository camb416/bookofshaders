#ifdef GL_ES
precision mediump float;
#endif


// uniform vec2 u_resolution; // Canvas size (w,h)
// uniform vec2 u_mouse; // mouse pos
// uniform float u_time; // time in s

// ShaderToy equivalents
// uniform vec3 iResolution // viewport resolution (in pixels)
// uniform vec4 iMouse // mouse pixel coords xy: current, zw: click
// uniform float iTime // time in s

#define PI 3.14159265359


float plot(vec2 st, float pct){
    return smoothstep( pct-0.02, pct, st.y) - smoothstep(pct, pct+0.02, st.y);
}

void main(){
   vec2 st = gl_FragCoord.xy/vec2(iResolution);


   // float y = st.x; // straight line
   // float y = pow(st.x, 5.0); // curve
   // float y = step(0.5, st.x); // stair
   // float y = smoothstep(0.1,0.9,st.x); // slide
   // float y = smoothstep(0.2,0.5,st.x) - smoothstep(0.5,0.8,st.x); // hump
   // float y = sin(st.x*PI + iTime*2.0)/2.0+0.5; // wave
   // float y = abs(sin(st.x*PI + iTime*2.0)); // bounce
   float y = fract(sin(st.x*PI + iTime*2.0)); // bounce

   vec3 color = vec3(y);

   // Plot a line
   float pct = plot(st,y);
   color = (1.0-pct)* color + pct*vec3(0.0,1.0,0.0);

   gl_FragColor = vec4(color, 1.0);

}
