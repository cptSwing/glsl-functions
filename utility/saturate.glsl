// Would be interesting to know if glsl compilers offer clamp [0,1] "for free" as well

float saturate(float f) {
    return clamp(f, 0., 1.);
}

vec2 saturate(vec2 v) {
    return clamp(v, 0., 1.);
}

vec3 saturate(vec3 v) {
    return clamp(v, 0., 1.);
}

vec4 saturate(vec4 v) {
    return clamp(v, 0., 1.);
}
