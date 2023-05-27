uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
uniform vec2 uFrequency;
uniform float uTime;
uniform float uDuration;
uniform vec3 startPos;
uniform vec3 endPos;
varying vec2 vUv;

attribute vec3 position;
// attribute float aRandom;

// varying float vRandom;

void main()
{
    // vUv = uv;
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    // modelPosition.z += aRandom;
    // modelPosition.z += sin(modelPosition.x*uFrequency.x+uTime) * 0.1;
    // modelPosition.z += sin(modelPosition.y*uFrequency.y+uTime) * 0.1;
    gl_Position = projectionMatrix * viewMatrix * modelPosition;
    // vRandom = aRandom;
    // float progress = clamp(uTime / uDuration, 0.0, 1.0); // Calculate the progress from 0 to 1
    // vec3 currentPosition = mix(startPos, endPos, progress); // Interpolate between start and end positions
    
    // vec3 transformed = position + currentPosition; // Apply the transformation to the vertex position
    
    // gl_Position = projectionMatrix * modelMatrix * vec4(transformed, 1.0); // Apply the standard transformation matrices
    // float progress = clamp(uTime / uDuration, 0.0, 1.0); // Calculate the progress from 0 to 1

    // vec3 newPosition = position; // Start with the original position
    
    // Modify the position to create a loading bar effect
    // newPosition.y *= step(0.0, progress) * step(progress, 1.0);
    // newPosition.x -= barWidth * 0.5;
    // newPosition.x *= step(newPosition.y, barHeight) * step(-newPosition.y, barHeight);
    // newPosition.x += barWidth * 0.5;

    // gl_Position = projectionMatrix * modelViewMatrix * vec4(newPosition, 1.0); // Apply the standard transformation matrices
}