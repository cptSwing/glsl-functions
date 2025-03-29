float drawCircle(vec2 coord, float radius, vec2 normalizedOffset) {
    vec2 dist = coord - normalizedOffset;
    return 1. - smoothstep(radius - (radius * 0.01), radius + (radius * 0.01), dot(dist, dist) * (1. / radius));
}
