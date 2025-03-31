// Based on https://www.shadertoy.com/view/MlBSWW and all the others
// kernelX, Y could be passed in as uniforms
// vec2 texelSize == 1. / vec2(widthPx, heightPx) basically
// relies on maxOfAllComponents()

mat3 sobelKernelX = mat3(1., 2., 1., 0., 0., 0., -1., -2., -1.);
mat3 sobelKernelY = mat3(1., 0., -1., 2., 0., -2., 1., 0., -1.);

float filterSobel(vec2 coord, sampler2D texSampler, float radius, vec2 texelSize) {
    vec2 dist = texelSize * radius;

    vec3 sumX = vec3(0.);	// x-axis change
    vec3 sumY = vec3(0.);	// y-axis change

    // GLSL: mat3[col][row]
    for (int i = -1; i <= 1; i++) {
        for (int j = -1; j <= 1; j++) {

            vec2 sampleAt = coord + vec2(float(i), float(j)) * dist;
            float kernelX = float(sobelKernelX[1 + i][1 + j]);
            float kernelY = float(sobelKernelY[1 + i][1 + j]);

            sumX += texture(texSampler, sampleAt).rgb * kernelX;
            sumY += texture(texSampler, sampleAt).rgb * kernelY;
        }
    }

    vec3 magnitude = sqrt(sumX * sumX + sumY * sumY);
    return maxOfAllComponents(magnitude);
}
