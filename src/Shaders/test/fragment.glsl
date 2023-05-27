precision mediump float;
uniform float uTime;
varying vec2 vUv;
// uniform float uDuration;
// uniform vec3 startPos;
// uniform vec3 endPos;
// varying float vRandom;

void main()
{
    // float progress = clamp(uTime / uDuration, 0.0, 1.0);
    // vec3 direction = normalize(endPos - startPos);
    // float distance = dot(direction, gl_FragCoord.xyz - startPos);
    // float alpha = smoothstep(0.0, 0.01, distance) * progress;
    // gl_FragColor = vec4( 1.0,1.0, 0.0, alpha);
    // float dash = sin(50. - uTime*10.);
    // if(dash > 0.) discard;
    gl_FragColor = vec4( 1.0,1.0, 0.0, 1.0);
}