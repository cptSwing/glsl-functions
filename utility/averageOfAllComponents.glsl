float averageOfAllComponents(vec2 v2) {
    return (v2.x + v2.y) / 2.;
}

float averageOfAllComponents(vec3 v3) {
    return (v3.x + v3.y + v3.z) / 3.;
}

float averageOfAllComponents(vec4 v4) {
    return (v4.x + v4.y + v4.z + v4.w) / 4.;
}
