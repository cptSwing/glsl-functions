// expects value in  [0, 1], returns value in [-1, 1] - a normal map's .xy for instance

float toNormalizedSignedRange(float unitRange) {
    return unitRange * 2. - 1.;
}

vec2 toNormalizedSignedRange(vec2 unitRange) {
    return unitRange * 2. - 1.;
}

vec3 toNormalizedSignedRange(vec3 unitRange) {
    return unitRange * 2. - 1.;
}

vec4 toNormalizedSignedRange(vec4 unitRange) {
    return unitRange * 2. - 1.;
}
