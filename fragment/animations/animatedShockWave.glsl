float animatedShockWave(vec2 coord, float tiling, float time) {
    float radialGradient = 1. - length(((coord * 2.) - 1.));
    return fract((radialGradient * tiling) + time);
}
