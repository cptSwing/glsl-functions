float maxOfAllComponents(vec2 v2) {
    return max(v2.x, v2.y);
}

float maxOfAllComponents(vec3 v3) {
    return max(max(v3.x, v3.y), v3.z);
}

float maxOfAllComponents(vec4 v4) {
    return max(max(v4.x, v4.y), max(v4.z, v4.w));
}
