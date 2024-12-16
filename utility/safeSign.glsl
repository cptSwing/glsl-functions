// Since sign() can also return 0. If value == 0., returns 1.

float safeSign(float f) {
    return f < 0. ? -1. : 1.;
}

vec2 safeSign(vec2 v) {
    return vec2(safeSign(v.x), safeSign(v.y));
}

vec3 safeSign(vec3 v) {
    return vec3(safeSign(v.x), safeSign(v.y), safeSign(v.z));
}

vec4 safeSign(vec4 v) {
    return vec4(safeSign(v.x), safeSign(v.y), safeSign(v.z), safeSign(v.w));
}
