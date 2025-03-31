// Adapted from https://thebookofshaders.com/07

float drawCircle(vec2 coord, float radius, vec2 normalizedOffset) {
    float dist = distance(coord, normalizedOffset);
    float steppedDist = step(radius, dist);
    return 1. - steppedDist;
}
