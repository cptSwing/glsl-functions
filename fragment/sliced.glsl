float sliced(float f, float steps) {
    return floor(f * steps) / steps;
}

vec2 sliced(vec2 v2, float steps) {
    return floor(v2 * steps) / steps;
}

vec3 sliced(vec3 v3, float steps) {
    return floor(v3 * steps) / steps;
}

vec4 sliced(vec4 v4, float steps) {
    return floor(v4 * steps) / steps;
}
