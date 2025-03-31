float minOfAllComponents(vec2 v2) {
    return min(v2.x, v2.y);
}

float minOfAllComponents(vec3 v3) {
    return min(min(v3.x, v3.y), v3.z);
}

float minOfAllComponents(vec4 v4) {
    return min(min(v4.x, v4.y), min(v4.z, v4.w));
}
