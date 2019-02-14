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


vec4 red(){
    return vec4(1.0,0.0,0.0,1.0);
}

void main(){
    vec2 res2 = vec2(iResolution.x,iResolution.y);
    vec2 st = gl_FragCoord.xy/res2;

// pulsing red
    //gl_FragColor = vec4(abs(sin(iTime)),0.0,0.0,1.0);
gl_FragColor = vec4(st.x,st.y,abs(sin(iTime)),1.0);
}
