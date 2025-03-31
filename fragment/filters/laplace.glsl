// Based on https://godotshaders.com/shader/laplace-filter-edge-detection
// laplaceKernel could be passed in as uniform
// vec2 texelSize == 1. / vec2(widthPx, heightPx) basically
// relies on minOfAllComponents()

const float laplaceKernel[9] = float[](-1., -1., -1., -1., 8., -1., -1., -1., -1.);

float filterLaplace(vec2 coord, sampler2D texSampler, float threshold, vec2 texelSize) {
    vec3 sum = vec3(0.);

    for (int i = 0; i < 9; i++) {
        vec2 d = vec2(float(i % 3 - 3 / 2), float(i / 3 - 3 / 2));
        sum += laplaceKernel[i] * texture(texSampler, coord + d * texelSize * threshold).rgb;
    }

    return minOfAllComponents(sum);
}
