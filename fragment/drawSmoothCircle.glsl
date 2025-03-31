// Adapted from https://thebookofshaders.com/07/

float drawSmoothCircle(vec2 coord, float radius, vec2 normalizedOffset) {
    vec2 dist = coord - normalizedOffset;
    float innerBlur = 0.05;
    float outerBlur = 0.05;
    return 1. - smoothstep(radius - (radius * innerBlur), radius + (radius * outerBlur), dot(dist, dist) * (1. / radius));
}
