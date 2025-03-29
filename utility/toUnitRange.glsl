// expects value in [-1, 1], returns value in [0, 1] 

float toUnitRange(float normalizedSignedRange) {
    return normalizedSignedRange * 0.5 + 0.5;
}

vec2 toUnitRange(vec2 normalizedSignedRange) {
    return normalizedSignedRange * 0.5 + 0.5;
}

vec3 toUnitRange(vec3 normalizedSignedRange) {
    return normalizedSignedRange * 0.5 + 0.5;
}

vec4 toUnitRange(vec4 normalizedSignedRange) {
    return normalizedSignedRange * 0.5 + 0.5;
}
